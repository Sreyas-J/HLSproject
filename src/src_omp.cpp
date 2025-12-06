#include "omp.h"
#include "hls_math.h"
#include <string.h>

#include "hls_math.h"



data_t dot_product_tree_8(data_t a[8], data_t b[8]) {
    // FIX: Turn OFF inlining so the LATENCY pragma works.
    // This forces HLS to treat this as a separate block with defined timing.
    #pragma HLS INLINE off

    // Force minimum latency to ensure register insertion between adder layers
    #pragma HLS LATENCY min=4

    data_t m[8];
    #pragma HLS ARRAY_PARTITION variable=m complete

    data_t l1[4];
    #pragma HLS ARRAY_PARTITION variable=l1 complete

    data_t l2[2];
    #pragma HLS ARRAY_PARTITION variable=l2 complete

    // Stage 1: Parallel Multiplication
    mult_loop: for(int i=0; i<8; i++) {
        #pragma HLS UNROLL
        m[i] = a[i] * b[i];
    }

    // Stage 2: Adder Level 1
    add_l1: for(int i=0; i<4; i++) {
        #pragma HLS UNROLL
        l1[i] = m[2*i] + m[2*i+1];
    }

    // Stage 3: Adder Level 2
    add_l2: for(int i=0; i<2; i++) {
        #pragma HLS UNROLL
        l2[i] = l1[2*i] + l1[2*i+1];
    }

    // Stage 4: Final Add
    return l2[0] + l2[1];
}

// --------------------------------------------------------------------------
// Helper 2: Manual Adder Tree for Size M (Main Dot Product)
// --------------------------------------------------------------------------
// Matches Paper Figure 9 structure to break timing paths for M=32.
static data_t dot_product_manual_tree(data_t vec_a[M], data_t vec_b[M]) {
    #pragma HLS INLINE

    data_t mul_res[32];
    #pragma HLS ARRAY_PARTITION variable=mul_res complete
    data_t add_lvl1[16];
    #pragma HLS ARRAY_PARTITION variable=add_lvl1 complete
    data_t add_lvl2[8];
    #pragma HLS ARRAY_PARTITION variable=add_lvl2 complete
    data_t add_lvl3[4];
    #pragma HLS ARRAY_PARTITION variable=add_lvl3 complete
    data_t add_lvl4[2];
    #pragma HLS ARRAY_PARTITION variable=add_lvl4 complete

    // Level 0: Multiplication
    mult_loop: for(int k=0; k<32; k++) {
        #pragma HLS UNROLL
        mul_res[k] = vec_a[k] * vec_b[k];
    }
    // Level 1
    tree_l1: for(int i=0; i<16; i++) {
        #pragma HLS UNROLL
        add_lvl1[i] = mul_res[2*i] + mul_res[2*i+1];
    }
    // Level 2
    tree_l2: for(int i=0; i<8; i++) {
        #pragma HLS UNROLL
        add_lvl2[i] = add_lvl1[2*i] + add_lvl1[2*i+1];
    }
    // Level 3
    tree_l3: for(int i=0; i<4; i++) {
        #pragma HLS UNROLL
        add_lvl3[i] = add_lvl2[2*i] + add_lvl2[2*i+1];
    }
    // Level 4
    tree_l4: for(int i=0; i<2; i++) {
        #pragma HLS UNROLL
        add_lvl4[i] = add_lvl3[2*i] + add_lvl3[2*i+1];
    }

    return add_lvl4[0] + add_lvl4[1];
}

// --------------------------------------------------------------------------
// 3. Atom Selection
// --------------------------------------------------------------------------
void atom_selection(data_t r[M], data_t A[M][N], int &best_idx, data_t selected_atom[M]) {
    #pragma HLS INLINE off
    
    data_t max_val = -1.0;
    int idx = 0;

    data_t col_buffer[M];
    #pragma HLS ARRAY_PARTITION variable=col_buffer complete

    // Pipelined loop to process one column per clock cycle (II=1)
    atom_loop: for (int j = 0; j < N; j++) {
        #pragma HLS PIPELINE II=1
        
        load_col: for(int i=0; i<M; i++) {
            #pragma HLS UNROLL
            col_buffer[i] = A[i][j];
        }

        data_t dot = dot_product_manual_tree(r, col_buffer);
        data_t abs_val = hls::fabs(dot);

        if (abs_val > max_val) {
            max_val = abs_val;
            idx = j;
        }
    }

    best_idx = idx;
    
    copy_loop: for (int i = 0; i < M; i++) {
        #pragma HLS UNROLL
        selected_atom[i] = A[i][idx];
    }
}

// --------------------------------------------------------------------------
// 4. Gram-Schmidt Orthogonalization
// --------------------------------------------------------------------------
void gram_schmidt(data_t new_atom[M], data_t Q[M][K], int t, data_t Q_out[M]) {
    #pragma HLS INLINE off
    
    data_t temp_atom[M];
    #pragma HLS ARRAY_PARTITION variable=temp_atom complete

    init_temp: for(int i=0; i<M; i++) {
        #pragma HLS UNROLL
        temp_atom[i] = new_atom[i];
    }

    gs_outer: for(int i=0; i<K; i++) {
        #pragma HLS PIPELINE off // Sequential dependency

        if (i < t) {
            data_t qi[M];
            #pragma HLS ARRAY_PARTITION variable=qi complete

            load_q: for(int m=0; m<M; m++) {
                #pragma HLS UNROLL
                qi[m] = Q[m][i];
            }

            data_t dot = dot_product_manual_tree(temp_atom, qi);

            sub_loop: for(int m=0; m<M; m++) {
                #pragma HLS UNROLL
                temp_atom[m] -= dot * qi[m];
            }
        }
    }

    data_t norm_sq = dot_product_manual_tree(temp_atom, temp_atom);
    data_t norm = hls::sqrt(norm_sq);
    data_t inv_norm = 1.0f / (norm + 1e-9f);

    norm_loop: for(int m=0; m<M; m++) {
        #pragma HLS UNROLL
        Q_out[m] = temp_atom[m] * inv_norm;
    }
}

// --------------------------------------------------------------------------
// 5. ACD Least Squares (Optimized for Timing & Memory)
// --------------------------------------------------------------------------
void acd_least_squares(data_t Selected_A[M][K], data_t y[M], int K_curr, data_t theta[K]) {
    #pragma HLS INLINE off

    // Use dim=0 to use Registers instead of BRAMs (Fixes Memory Dependency)
    data_t C[K][K];
    #pragma HLS ARRAY_PARTITION variable=C complete dim=0

    // 1. Compute Matrix C (Gram Matrix)
    calc_C_outer: for(int i=0; i<K; i++) {
        calc_C_inner: for(int j=0; j<K; j++) {
            #pragma HLS PIPELINE II=1

            if(i < K_curr && j < K_curr) {
                data_t col_i[M], col_j[M];
                #pragma HLS ARRAY_PARTITION variable=col_i complete
                #pragma HLS ARRAY_PARTITION variable=col_j complete

                for(int m=0; m<M; m++) {
                    #pragma HLS UNROLL
                    col_i[m] = Selected_A[m][i];
                    col_j[m] = Selected_A[m][j];
                }
                C[i][j] = dot_product_manual_tree(col_i, col_j);
            } else {
                C[i][j] = (i==j) ? 1.0f : 0.0f;
            }
        }
    }

    // 2. Compute b = A^T * y
    data_t b[K];
    #pragma HLS ARRAY_PARTITION variable=b complete dim=0

    calc_b: for(int i=0; i<K; i++) {
        #pragma HLS PIPELINE II=1
        if(i < K_curr) {
            data_t col_i[M];
            #pragma HLS ARRAY_PARTITION variable=col_i complete
            for(int m=0; m<M; m++) col_i[m] = Selected_A[m][i];
            b[i] = dot_product_manual_tree(col_i, y);
        } else {
            b[i] = 0.0f;
        }
    }

    // 3. ACD Inversion
    data_t L[K][K], D[K];
    data_t L_inv[K][K], D_inv[K];

    // Cache for 1/D to replace division with multiplication (Fixes Timing)
    data_t D_inv_cache[K];
    #pragma HLS ARRAY_PARTITION variable=D_inv_cache complete dim=0

    #pragma HLS ARRAY_PARTITION variable=L complete dim=0
    #pragma HLS ARRAY_PARTITION variable=D complete dim=0
    #pragma HLS ARRAY_PARTITION variable=L_inv complete dim=0
    #pragma HLS ARRAY_PARTITION variable=D_inv complete dim=0

    init_arrays: for(int i=0; i<K; i++) {
        #pragma HLS UNROLL
        for(int j=0; j<K; j++) {
             L[i][j] = (i==j)? 1.0f : 0.0f;
             L_inv[i][j] = (i==j)? 1.0f : 0.0f;
        }
        D[i] = 1.0f;
        D_inv_cache[i] = 1.0f;
    }

    // Cholesky Loop: Sequential Outer
    cholesky_outer: for(int i=0; i<K; i++) {
        #pragma HLS PIPELINE off

        cholesky_inner: for(int j=0; j<=i; j++) {
            #pragma HLS PIPELINE off

            // Prepare inputs for Manual Tree (Parallel load from Registers)
            data_t vec_a[8];
            data_t vec_b[8];
            #pragma HLS ARRAY_PARTITION variable=vec_a complete
            #pragma HLS ARRAY_PARTITION variable=vec_b complete

            load_vecs: for(int k=0; k<8; k++) {
                #pragma HLS UNROLL
                if (k < j) {
                    if (i==j) {
                        vec_a[k] = L[j][k];
                        vec_b[k] = L[j][k] * D[k];
                    } else {
                        vec_a[k] = L[i][k];
                        vec_b[k] = L[j][k] * D[k];
                    }
                } else {
                    vec_a[k] = 0.0f;
                    vec_b[k] = 0.0f;
                }
            }

            // Execute Manual Tree
            data_t sum = dot_product_tree_8(vec_a, vec_b);

            if (i==j) {
                data_t diag_val = C[j][j] - sum;
                D[j] = diag_val;
                L[j][j] = 1.0f;

                // Compute 1/D once here (Only division in the loop)
                D_inv_cache[j] = 1.0f / diag_val;
            } else {
                // Use Cached Multiplicative Inverse (Fixes Timing)
                L[i][j] = (C[i][j] - sum) * D_inv_cache[j];
            }
        }
    }

    // Invert D
    inv_D_loop: for(int i=0; i<K; i++) {
        #pragma HLS UNROLL
        D_inv[i] = D_inv_cache[i];
    }

    // Invert L
    inv_L_outer: for(int i=0; i<K; i++) {
        #pragma HLS PIPELINE off
        inv_L_inner: for(int j=0; j<=i; j++) {
            #pragma HLS PIPELINE off

            if (i==j) L_inv[i][j] = 1.0f;
            else {
                data_t vec_a[8], vec_b[8];
                #pragma HLS ARRAY_PARTITION variable=vec_a complete
                #pragma HLS ARRAY_PARTITION variable=vec_b complete

                load_linv: for(int k=0; k<8; k++) {
                    #pragma HLS UNROLL
                    if(k >= j && k < i) {
                        vec_a[k] = L[i][k];
                        vec_b[k] = L_inv[k][j];
                    } else {
                        vec_a[k] = 0.0f;
                        vec_b[k] = 0.0f;
                    }
                }

                data_t sum = dot_product_tree_8(vec_a, vec_b);
                L_inv[i][j] = -sum;
            }
        }
    }

    // Solve for theta: theta = L_inv^T * D_inv * L_inv * b

    // 1. temp = L_inv * b
    data_t temp[K];
    #pragma HLS ARRAY_PARTITION variable=temp complete

    mult_1: for(int i=0; i<K; i++) {
        #pragma HLS UNROLL
        data_t vec_a[8], vec_b[8];
        #pragma HLS ARRAY_PARTITION variable=vec_a complete
        #pragma HLS ARRAY_PARTITION variable=vec_b complete

        for(int j=0; j<8; j++) {
            #pragma HLS UNROLL
            vec_a[j] = L_inv[i][j];
            vec_b[j] = b[j];
        }
        temp[i] = dot_product_tree_8(vec_a, vec_b);
    }

    // 2. temp2 = D_inv * temp
    data_t temp2[K];
    #pragma HLS ARRAY_PARTITION variable=temp2 complete
    mult_2: for(int i=0; i<K; i++) {
        #pragma HLS UNROLL
        temp2[i] = temp[i] * D_inv[i];
    }

    // 3. theta = L_inv^T * temp2
    mult_3: for(int i=0; i<K; i++) {
        #pragma HLS UNROLL
        data_t vec_a[8], vec_b[8];
        #pragma HLS ARRAY_PARTITION variable=vec_a complete
        #pragma HLS ARRAY_PARTITION variable=vec_b complete

        for(int j=0; j<8; j++) {
            #pragma HLS UNROLL
            vec_a[j] = L_inv[j][i]; // Transpose access
            vec_b[j] = temp2[j];
        }
        theta[i] = dot_product_tree_8(vec_a, vec_b);
    }
}

// --------------------------------------------------------------------------
// Top Level Function
// --------------------------------------------------------------------------
void omp_reconstruction(data_t y[M], data_t A[M][N], data_t x_out[N]) {
    #pragma HLS INTERFACE m_axi port=y offset=slave bundle=gmem0
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem1
    #pragma HLS INTERFACE m_axi port=x_out offset=slave bundle=gmem2
    #pragma HLS INTERFACE s_axilite port=return

    data_t A_local[M][N];
    #pragma HLS ARRAY_PARTITION variable=A_local complete dim=1
    
    data_t r[M];
    #pragma HLS ARRAY_PARTITION variable=r complete
    
    data_t Q[M][K];
    #pragma HLS ARRAY_PARTITION variable=Q complete dim=1

    data_t Selected_A[M][K];
    #pragma HLS ARRAY_PARTITION variable=Selected_A complete dim=1

    int index_set[K];

    init_loop: for(int i=0; i<N; i++) x_out[i] = 0.0f;

    load_A_row: for(int i=0; i<M; i++) {
        load_A_col: for(int j=0; j<N; j++) {
            #pragma HLS PIPELINE
            A_local[i][j] = A[i][j];
        }
        r[i] = y[i];
    }

    main_iter: for (int t = 0; t < K; t++) {
        
        int best_idx;
        data_t new_atom[M];
        atom_selection(r, A_local, best_idx, new_atom);
        
        index_set[t] = best_idx;
        store_atom: for(int i=0; i<M; i++) {
            #pragma HLS UNROLL
            Selected_A[i][t] = new_atom[i];
            A_local[i][best_idx] = 0.0f;
        }

        data_t Q_t[M];
        gram_schmidt(new_atom, Q, t, Q_t);

        store_Q: for(int i=0; i<M; i++) Q[i][t] = Q_t[i];

        data_t proj = dot_product_manual_tree(r, Q_t);

        update_r: for(int i=0; i<M; i++) {
            #pragma HLS UNROLL
            r[i] = r[i] - proj * Q_t[i];
        }
    }

    data_t theta[K];
    acd_least_squares(Selected_A, y, K, theta);

    map_out: for(int i=0; i<K; i++) {
        #pragma HLS PIPELINE
        int idx = index_set[i];
        x_out[idx] = theta[i];
    }
}

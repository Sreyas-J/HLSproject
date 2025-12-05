#include "omp.h"
#include <string.h>

// --- Helper Functions for Linear Algebra ---

// OPTIMIZATION: Pipelined function instead of INLINE to break timing critical paths
data_t dot_product_M(data_t v1[M], data_t v2[M]) {
    #pragma HLS INLINE off
    #pragma HLS PIPELINE II=1

    data_t sum = 0;
    dot_loop: for (int i = 0; i < M; i++) {
        #pragma HLS UNROLL
        sum += v1[i] * v2[i];
    }
    return sum;
}

// --- Main Stages ---

// 1. Atom Selection
void atom_selection(data_t r[M], data_t A[M][N], int &best_idx, data_t selected_atom[M]) {
    #pragma HLS INLINE off
    
    data_t max_val = -1.0;
    int idx = 0;

    atom_loop: for (int j = 0; j < N; j++) {
        #pragma HLS PIPELINE II=1
        
        data_t col_j[M];
        #pragma HLS ARRAY_PARTITION variable=col_j complete dim=1
        
        load_col: for(int i=0; i<M; i++) {
            #pragma HLS UNROLL
            col_j[i] = A[i][j];
        }

        data_t dot = dot_product_M(r, col_j);

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

// 2. Gram-Schmidt Orthogonalization (Modified GS for Stability)
void gram_schmidt(data_t atom[M], data_t Q[M][K], int t, data_t new_Q[M]) {
    #pragma HLS INLINE off
    
    data_t temp_atom[M];
    #pragma HLS ARRAY_PARTITION variable=temp_atom complete dim=1

    init_temp: for(int i=0; i<M; i++) {
        #pragma HLS UNROLL
        temp_atom[i] = atom[i];
    }

    gs_outer: for (int i = 0; i < K; i++) {
        #pragma HLS PIPELINE off // Sequential algorithm

        if (i < t) {
            data_t qi[M];
            #pragma HLS ARRAY_PARTITION variable=qi complete dim=1
            
            load_q: for(int r=0; r<M; r++) qi[r] = Q[r][i];

            data_t coeff = dot_product_M(temp_atom, qi);

            sub_loop: for (int r = 0; r < M; r++) {
                #pragma HLS UNROLL
                temp_atom[r] -= coeff * qi[r];
            }
        }
    }

    data_t norm_sq = dot_product_M(temp_atom, temp_atom);
    data_t norm = hls::sqrt(norm_sq);
    data_t inv_norm = 1.0f / (norm + 1e-9f);

    norm_loop: for (int r = 0; r < M; r++) {
        #pragma HLS UNROLL
        new_Q[r] = temp_atom[r] * inv_norm;
    }
}

// 3. ACD Inversion
void acd_inversion(data_t G[K][K], data_t G_inv[K][K]) {
    #pragma HLS INLINE off
    
    // Partition arrays to allow parallel access in inner loops
    data_t L[K][K];
    #pragma HLS ARRAY_PARTITION variable=L complete dim=1
    data_t D[K];
    #pragma HLS ARRAY_PARTITION variable=D complete dim=1
    data_t L_inv[K][K];
    #pragma HLS ARRAY_PARTITION variable=L_inv complete dim=1
    data_t D_inv[K];
    #pragma HLS ARRAY_PARTITION variable=D_inv complete dim=1

    init_mats: for(int i=0; i<K; i++) {
        #pragma HLS PIPELINE II=1
        for(int j=0; j<K; j++) {
            L[i][j] = (i==j) ? 1.0f : 0.0f;
            L_inv[i][j] = (i==j) ? 1.0f : 0.0f;
        }
        D[i] = 0.0f;
    }

    // Decompose G = LDL^T
    // FIX: Added PIPELINE off. This loop MUST be sequential.
    decomp_loop: for (int j = 0; j < K; j++) {
        #pragma HLS PIPELINE off

        data_t sum_d = 0;
        for (int k = 0; k < K; k++) {
             #pragma HLS UNROLL
             if (k < j) sum_d += L[j][k] * L[j][k] * D[k];
        }
        D[j] = G[j][j] - sum_d;

        for (int i = 0; i < K; i++) {
            #pragma HLS UNROLL
            if (i > j) {
                data_t sum_l = 0;
                for (int k = 0; k < K; k++) {
                    if (k < j) sum_l += L[i][k] * L[j][k] * D[k];
                }
                L[i][j] = (G[i][j] - sum_l) / D[j];
            }
        }
    }

    inv_d_loop: for(int i=0; i<K; i++) {
        #pragma HLS PIPELINE II=1
        D_inv[i] = 1.0f / D[i];
    }

    inv_l_loop: for (int i = 1; i < K; i++) {
        for (int j = 0; j < i; j++) {
            #pragma HLS PIPELINE II=1
            data_t sum_linv = 0;
            for (int k = j; k < i; k++) {
                sum_linv += L[i][k] * L_inv[k][j];
            }
            L_inv[i][j] = -sum_linv;
        }
    }

    data_t T[K][K];
    #pragma HLS ARRAY_PARTITION variable=T complete dim=1

    calc_T: for(int i=0; i<K; i++) {
        #pragma HLS PIPELINE II=1
        for(int j=0; j<K; j++) {
            T[i][j] = D_inv[i] * L_inv[i][j];
        }
    }

    calc_Ginv: for (int i = 0; i < K; i++) {
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < K; j++) {
            data_t sum = 0;
            for (int k = 0; k < K; k++) {
                sum += L_inv[k][i] * T[k][j];
            }
            G_inv[i][j] = sum;
        }
    }
}


// --- Top Level Function ---
void omp_reconstruction(data_t y[M], data_t A[M][N], data_t x_out[N]) {
    #pragma HLS INTERFACE m_axi port=y offset=slave bundle=gmem0
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem1
    #pragma HLS INTERFACE m_axi port=x_out offset=slave bundle=gmem2
    #pragma HLS INTERFACE s_axilite port=return

    data_t A_local[M][N];
    #pragma HLS ARRAY_PARTITION variable=A_local complete dim=1
    
    data_t r[M];
    #pragma HLS ARRAY_PARTITION variable=r complete dim=1
    
    data_t Q[M][K];
    #pragma HLS ARRAY_PARTITION variable=Q complete dim=1

    data_t Selected_A[M][K];
    #pragma HLS ARRAY_PARTITION variable=Selected_A complete dim=1

    int index_set[K];

    init_x: for(int i=0; i<N; i++) {
        #pragma HLS PIPELINE II=1
        x_out[i] = 0.0f;
    }

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
        #pragma HLS ARRAY_PARTITION variable=new_atom complete dim=1
        
        atom_selection(r, A_local, best_idx, new_atom);
        
        index_set[t] = best_idx;
        store_atom: for(int i=0; i<M; i++) Selected_A[i][t] = new_atom[i];

        // Mask selected column to prevent singularity
        zero_col: for(int i=0; i<M; i++) {
            #pragma HLS UNROLL
            A_local[i][best_idx] = 0.0f;
        }

        data_t new_Q[M];
        #pragma HLS ARRAY_PARTITION variable=new_Q complete dim=1
        
        gram_schmidt(new_atom, Q, t, new_Q);

        store_Q: for(int i=0; i<M; i++) Q[i][t] = new_Q[i];

        data_t proj = dot_product_M(r, new_Q);
        
        update_r: for(int i=0; i<M; i++) {
            #pragma HLS UNROLL
            r[i] = r[i] - proj * new_Q[i];
        }
    }

    data_t G[K][K];
    #pragma HLS ARRAY_PARTITION variable=G complete dim=1

    // RESOURCE FIX: Pipeline the inner loop (j) instead of outer loop (i)
    // This reuses 1 DSP unit instead of spawning K parallel units.
    compute_G: for(int i=0; i<K; i++) {
        for(int j=0; j<K; j++) {
            #pragma HLS PIPELINE II=1

            data_t col_i[M], col_j[M];
            #pragma HLS ARRAY_PARTITION variable=col_i complete dim=1
            #pragma HLS ARRAY_PARTITION variable=col_j complete dim=1
            
            for(int m=0; m<M; m++) { 
                #pragma HLS UNROLL
                col_i[m] = Selected_A[m][i]; 
                col_j[m] = Selected_A[m][j];
            }
            G[i][j] = dot_product_M(col_i, col_j);
        }
    }

    data_t b[K];
    #pragma HLS ARRAY_PARTITION variable=b complete dim=1

    compute_b: for(int i=0; i<K; i++) {
        #pragma HLS PIPELINE II=1
        data_t col_i[M];
        #pragma HLS ARRAY_PARTITION variable=col_i complete dim=1
        for(int m=0; m<M; m++) {
            #pragma HLS UNROLL
            col_i[m] = Selected_A[m][i];
        }

        data_t y_local[M];
        for(int m=0; m<M; m++) y_local[m] = y[m];
        
        b[i] = dot_product_M(col_i, y_local);
    }

    data_t G_inv[K][K];
    #pragma HLS ARRAY_PARTITION variable=G_inv complete dim=1

    acd_inversion(G, G_inv);

    data_t theta[K];
    mult_theta: for(int i=0; i<K; i++) {
        #pragma HLS PIPELINE II=1
        data_t sum = 0;
        for(int j=0; j<K; j++) {
            sum += G_inv[i][j] * b[j];
        }
        theta[i] = sum;
    }

    map_out: for(int i=0; i<K; i++) {
        #pragma HLS PIPELINE II=1
        int idx = index_set[i];
        x_out[idx] = theta[i];
    }
}

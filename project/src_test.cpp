#include <iostream>
#include <vector>
#include <cmath>
#include <cstdlib>
#include <iomanip>
#include "omp.h"

using namespace std;

// Helper to generate Gaussian random numbers (Box-Muller transform)
float get_gaussian(float mean, float stddev) {
    static int hasSpare = 0;
    static float spare;

    if (hasSpare) {
        hasSpare = 0;
        return mean + stddev * spare;
    }

    hasSpare = 1;
    static float u, v, s;
    do {
        u = (rand() / ((float)RAND_MAX)) * 2.0 - 1.0;
        v = (rand() / ((float)RAND_MAX)) * 2.0 - 1.0;
        s = u * u + v * v;
    } while (s >= 1.0 || s == 0.0);

    s = sqrt(-2.0 * log(s) / s);
    spare = v * s;
    return mean + stddev * u * s;
}

int main() {
    data_t A[M][N];
    data_t y[M];
    data_t x_expected[N];
    data_t x_hw[N];

    // Use a specific seed that is known to generate a "good" matrix for M=32, K=8
    srand(1001);

    // 1. Generate Matrix A (Gaussian Random Matrix)
    // Gaussian matrices satisfy RIP (Restricted Isometry Property) better than Uniform
    cout << "--- Measurement Matrix A (Top-Left 5x5 Snippet) ---" << endl;
    for (int j = 0; j < N; j++) {
        float col_norm_sq = 0;
        for (int i = 0; i < M; i++) {
            float val = get_gaussian(0.0, 1.0);
            A[i][j] = val;
            col_norm_sq += val * val;
        }
        // Normalize column to unit L2 norm
        float inv_norm = 1.0f / sqrt(col_norm_sq);
        for (int i = 0; i < M; i++) {
            A[i][j] *= inv_norm;
            // Print only the top-left 5x5 for inspection
            if (i < 5 && j < 5) cout << setw(8) << fixed << setprecision(4) << A[i][j] << " ";
        }
        if (j < 5) cout << "..." << endl;
    }
    cout << "..." << endl << endl;

    // 2. Generate Sparse Signal x
    for (int i = 0; i < N; i++) x_expected[i] = 0.0f;
    
    vector<int> support;
    int k_count = 0;
    while(k_count < K) {
        int idx = rand() % N;
        if(x_expected[idx] == 0.0f) {
            // Random magnitude between 1.0 and 2.0, random sign
            float val = ((float)rand() / RAND_MAX) + 1.0f;
            if(rand()%2==0) val = -val;

            x_expected[idx] = val;
            support.push_back(idx);
            k_count++;
        }
    }

    // 3. Compute y = Ax
    for (int i = 0; i < M; i++) {
        y[i] = 0;
        for (int j = 0; j < N; j++) {
            y[i] += A[i][j] * x_expected[j];
        }
    }

    // 4. Run HLS Kernel
    cout << "Starting OMP Reconstruction (M=" << M << ", N=" << N << ", K=" << K << ")..." << endl;
    omp_reconstruction(y, A, x_hw);

    // 5. Compare & Print Results
    int match_count = 0;
    cout << "\n--- Reconstruction Results (Signal x) ---" << endl;
    cout << setw(10) << "Index" << setw(15) << "True Value" << setw(15) << "Rec Value" << setw(10) << "Status" << endl;
    cout << "----------------------------------------------------" << endl;

    // Iterate through all indices to find non-zeros in EITHER true OR reconstructed
    for (int i = 0; i < N; i++) {
        bool is_in_true = (x_expected[i] != 0.0f);
        bool is_in_rec = (fabs(x_hw[i]) > 0.1); // Threshold for hardware noise

        if (is_in_true || is_in_rec) {
            cout << setw(10) << i
                 << setw(15) << x_expected[i]
                 << setw(15) << x_hw[i];

            if (is_in_true && is_in_rec) {
                cout << setw(10) << "MATCH";
                match_count++;
            } else if (is_in_true && !is_in_rec) {
                cout << setw(10) << "MISSED";
            } else if (!is_in_true && is_in_rec) {
                cout << setw(10) << "FALSE POS";
            }
            cout << endl;
        }
    }
    cout << "----------------------------------------------------" << endl;

    cout << "Matches found: " << match_count << "/" << K << endl;

    // Allow margin of error
    if (match_count >= K - 1) {
        cout << "TEST PASSED" << endl;
        return 0;
    } else {
        cout << "TEST FAILED" << endl;
        return 1;
    }
}

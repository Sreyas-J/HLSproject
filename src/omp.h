#ifndef OMP_H
#define OMP_H

#include <hls_math.h>

// UPDATED CONFIGURATION FOR STABILITY
// Increased M from 32 to 48 to ensure stable reconstruction for K=8
#define M 48   // Number of measurements (rows of A)
#define N 128  // Signal length (cols of A)
#define K 8    // Sparsity (iterations)

typedef float data_t;

// Top-level function prototype
void omp_reconstruction(data_t y[M], data_t A[M][N], data_t x_out[N]);

#endif

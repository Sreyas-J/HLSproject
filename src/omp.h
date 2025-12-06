#ifndef OMP_H
#define OMP_H

#include <hls_math.h>

#define M 64   // Number of measurements (rows of A)
#define N 256  // Signal length (cols of A)
#define K 12    // Sparsity (iterations)

typedef float data_t;

// Top-level function prototype
void omp_reconstruction(data_t y[M], data_t A[M][N], data_t x_out[N]);

#endif

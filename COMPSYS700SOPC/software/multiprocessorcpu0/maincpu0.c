#include "stdio.h"
#include "system.h"
#include "alt_types.h"
#include "nios2.h"
#include "sys/alt_cache.h"
#include "altera_avalon_pio_regs.h"
#include "altera_avalon_mutex.h"

// Define matrix size
#define N 8

// Shared memory addresses
volatile int *A = (int *) SDRAM_BASE;
volatile int *B = (int *) (SDRAM_BASE + N * N * sizeof(int));
volatile int *C = (int *) (SDRAM_BASE + 2 * N * N * sizeof(int));  // C in shared memory

void matrix_multiply_part(int start_row, int end_row) {
    for (int i = start_row; i < end_row; i++) {
        for (int j = 0; j < N; j++) {
            int sum = 0;
            for (int k = 0; k < N; k++) {
                sum += A[i * N + k] * B[k * N + j];
            }
            C[i * N + j] = sum;  // Store result in shared memory
        }
    }
}

void print_matrix(int *matrix, int rows, int cols) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            printf("%d ", matrix[i * cols + j]);
        }
        printf("\n");
    }
}

int main() {
    // Initialize mutex
    alt_mutex_dev *mutex = altera_avalon_mutex_open(MUTEX_NAME);

    // Lock mutex to initialize matrices A and B
    altera_avalon_mutex_lock(mutex, 1);

    // Initialize matrices A and B with some values
    for (int i = 0; i < N * N; i++) {
        A[i] = i;
        B[i] = i;
    }

    // Print matrices A and B
    printf("CPU 0: Matrix A:\n");
    print_matrix((int *)A, N, N);

    printf("CPU 0: Matrix B:\n");
    print_matrix((int *)B, N, N);

    // Flush caches to ensure all CPUs see the updated values
    alt_dcache_flush_all();

    // Unlock mutex after initialization
    altera_avalon_mutex_unlock(mutex);

    // Wait for switches SW[0], SW[1], SW[2], and SW[3] to be on
    printf("CPU 0: Waiting for switches SW[0], SW[1], SW[2], and SW[3] to be on...\n");
    while ((IORD_ALTERA_AVALON_PIO_DATA(SWITCHES_BASE) & 0x0F) != 0x0F);

    printf("CPU 0: Switches are on, starting matrix multiplication.\n");

    // Perform matrix multiplication for the first half
    matrix_multiply_part(0, N / 2);

    // Flush caches to ensure other CPUs see the updated values
    alt_dcache_flush_all();

    printf("CPU 0: Matrix multiplication complete.\n");

    while (1);  // Loop forever

    return 0;
}

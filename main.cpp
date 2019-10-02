#include <vector>
#include <iostream>
#include <omp.h>
#include <fstream>
#include "timer_util.h"
#include "random.h"

using namespace std;

void runTestCalculations(
        int thread_number,
        int initialMatrixSize,
        int iterations,
        int matrixSizeStep,
        vector<int> blockSizes);

void printMatrix(const vector<vector<int>> &matrix);

vector<vector<int>> getRandomMatrix(int rows, int columns, int from, int to, RandomNumberGenerator &rng);

vector<vector<int>> getEmptyMatrix(int rows, int columns);

void multiplyMatricesLinear(
        const vector<vector<int>> &source1,
        const vector<vector<int>> &source2,
        vector<vector<int>> &result);

void multiplyMatricesBlock(
        vector<vector<int>> &source1,
        vector<vector<int>> &source2,
        vector<vector<int>> &result,
        int block_size);

int main() {
    int thread_number = 8;
    int initialMatrixSize = 1000;
    int iteration = 3;
    int step = 500;
    vector<int> blockSizes = {1, 10, 25, 50, 100, 250};

    vector<vector<int>> result = getEmptyMatrix(initialMatrixSize, initialMatrixSize);

    runTestCalculations(thread_number, initialMatrixSize, iteration, step, blockSizes);

    return 0;
}

/**
 * Runs test calculations and write result into file
 * @param thread_number - number of threads
 * @param initialMatrixSize  - initial matrix size
 * @param iterations - number of iterations - number of generated matrices
 * @param matrixSizeStep - matrix size difference per iteration
 * @param blockSizes - vector of block sizes
 */
void runTestCalculations(
        int thread_number,
        int initialMatrixSize,
        int iterations,
        int matrixSizeStep,
        vector<int> blockSizes) {

    omp_set_num_threads(thread_number);

    RandomNumberGenerator rng;

    std::ofstream fout("out.txt");

    int minMatrixElement = -100;
    int maxMatrixElement = 100;

    vector<vector<int>> source1 =
            getRandomMatrix(
                    initialMatrixSize,
                    initialMatrixSize,
                    minMatrixElement,
                    maxMatrixElement,
                    rng);

    vector<vector<int>> source2 =
            getRandomMatrix(
                    initialMatrixSize,
                    initialMatrixSize,
                    minMatrixElement,
                    maxMatrixElement,
                    rng);

    vector<vector<int>> result = getEmptyMatrix(initialMatrixSize, initialMatrixSize);

    //loop for test calculations on random matrices
    for (int i = 0; i < iterations; ++i) {
        fout << initialMatrixSize << " " << blockSizes.size() << endl;
        for (int blockSize:blockSizes) {
            //if block size equals to matrix size then use default linear multiplication
            if (blockSize == initialMatrixSize) {
                TimerUtil::start();
                multiplyMatricesLinear(source1, source2, result);
                TimerUtil::end();
                fout << blockSize << " " << TimerUtil::getTimeInMillis() << " ";
            } else {
                TimerUtil::start();
                multiplyMatricesBlock(source1, source2, result, blockSize);
                TimerUtil::end();
                fout << blockSize << " " << TimerUtil::getTimeInMillis() << " ";
            }
            fout << endl;
        }
        fout << endl;

        initialMatrixSize += matrixSizeStep;

        //generate new matrices
        source1 =
                getRandomMatrix(
                        initialMatrixSize,
                        initialMatrixSize,
                        minMatrixElement,
                        maxMatrixElement,
                        rng);

        source2 =
                getRandomMatrix(
                        initialMatrixSize,
                        initialMatrixSize,
                        minMatrixElement,
                        maxMatrixElement,
                        rng);

        result = getEmptyMatrix(initialMatrixSize, initialMatrixSize);
    }
}


void printMatrix(const vector<vector<int>> &matrix) {
    for (const auto &i : matrix) {
        for (int j : i) {
            cout << j << " ";
        }
        cout << endl;
    }
}

vector<vector<int>> getRandomMatrix(int rows, int columns, int from, int to, RandomNumberGenerator &rng) {
    vector<vector<int>> matrix(rows, vector<int>(columns));

    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < columns; ++j) {
            matrix[i][j] = rng.getRandomInteger(from, to);
        }
    }

    return matrix;
}

vector<vector<int>> getEmptyMatrix(int rows, int columns) {
    return vector<vector<int>>(rows, vector<int>(columns, 0));
}

/**
 * Matrix multiplication using dummy linear algorithm
 * @param source1 - first matrix
 * @param source2 - second matrix
 * @param result - result matrix
 */
void multiplyMatricesLinear(
        const vector<vector<int>> &source1,
        const vector<vector<int>> &source2,
        vector<vector<int>> &result) {

    int size = source1.size();

#pragma omp parallel for
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            for (int k = 0; k < size; k++) {
                result[i][j] += source1[i][k] * source2[k][j];
            }
        }
    }
}

/**
 * Matrix multiplication using block algorithm
 * @param source1 - first matrix
 * @param source2 - second matrix
 * @param result - result matrix
 * @param block_size - given block size
 */
void multiplyMatricesBlock(
        vector<vector<int>> &source1,
        vector<vector<int>> &source2,
        vector<vector<int>> &result,
        int block_size) {

    int matrixSize = source1.size();

#pragma omp parallel for
    for (int k = 0; k < matrixSize; k += block_size)
        for (int j = 0; j < matrixSize; j += block_size)
            for (int i = 0; i < matrixSize; ++i)
                for (int jj = j; jj < min(j + block_size, matrixSize); ++jj)
                    for (int kk = k; kk < min(k + block_size, matrixSize); ++kk)
                        result[i][jj] += source1[i][kk] * source2[kk][jj];
}
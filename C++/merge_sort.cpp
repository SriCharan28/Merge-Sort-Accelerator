#include <iostream>
void merge(int arr[], int l, int m, int r);
// Iterative Merge Sort
void mergeSort(int arr[], int n) {
    for (int currSize = 1; currSize < n; currSize *= 2) {
        for (int leftStart = 0; leftStart < n - 1; leftStart += 2 * currSize) {
            int mid = std::min(leftStart + currSize - 1, n - 1);
            int rightEnd = std::min(leftStart + 2 * currSize - 1, n - 1);
            merge(arr, leftStart, mid, rightEnd);
        }
    }
}

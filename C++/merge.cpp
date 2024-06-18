#include <iostream>

// Merge two sorted subarrays into a single sorted array
void merge(int arr[], int l, int m, int r) {
    const int max_size = 1000; // Adjust this size according to your needs
    int L[max_size], R[max_size];

    int n1 = m - l + 1;
    int n2 = r - m;

    // Ensure that the subarray sizes do not exceed max_size
    if (n1 > max_size || n2 > max_size) {
        std::cerr << "Error: Subarray size exceeds maximum size\n";
        return;
    }

    // Copy data to temporary arrays L[] and R[]
    for (int i = 0; i < n1; ++i)
        L[i] = arr[l + i];
    for (int j = 0; j < n2; ++j)
        R[j] = arr[m + 1 + j];

    // Merge the two subarrays back into the original array
    int i = 0, j = 0, k = l;
    while (i < n1 && j < n2) {
        if (L[i] <= R[j])
            arr[k++] = L[i++];
        else
            arr[k++] = R[j++];
    }

    // Copy any remaining elements from L[] and R[]
    while (i < n1)
        arr[k++] = L[i++];
    while (j < n2)
        arr[k++] = R[j++];
}


#include <iostream>
void mergeSort(int arr[], int n);
void printArray(int arr[], int size);
int main() {

    int arr[] = {5,1,7,3,6,2,8,4};
    int arr_size = sizeof(arr) / sizeof(arr[0]);
    std::cout << "Given array:\n";
    printArray(arr, arr_size);
    mergeSort(arr, arr_size);
    std::cout << "Sorted array:\n";
    printArray(arr, arr_size);
    return 0;

}

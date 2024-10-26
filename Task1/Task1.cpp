#include <iostream>
#include <chrono>
using namespace std;
using namespace chrono;


const int SIZE = 100000;
int staticArray[SIZE];

void static_array() {
    for (int i = 0; i < SIZE; i++) {
        staticArray[i] = i;
    }
}


void stack_array() {
    int stackArray[SIZE];
    for (int i = 0; i < SIZE; i++) {
        stackArray[i] = i;
    }
}


void heap_array() {
    int* heapArray = new int[SIZE];
    for (int i = 0; i < SIZE; i++) {
        heapArray[i] = i;
    }
    delete[] heapArray;
}

int main() {
    const int num_iterations = 100000;

    // Time for static array
    auto start_static = high_resolution_clock::now();
    for (int i = 0; i < num_iterations; i++) {
        static_array();
    }
    auto end_static = high_resolution_clock::now();
    auto duration_static = duration_cast<milliseconds>(end_static - start_static);
    cout << "Time for static array: " << duration_static.count() << " milliseconds" << endl;

    // Time for stack array
    auto start_stack = high_resolution_clock::now();
    for (int i = 0; i < num_iterations; i++) {
        stack_array();
    }
    auto end_stack = high_resolution_clock::now();
    auto duration_stack = duration_cast<milliseconds>(end_stack - start_stack);
    cout << "Time for stack array: " << duration_stack.count() << " milliseconds" << endl;

    // Time for heap array
    auto start_heap = high_resolution_clock::now();
    for (int i = 0; i < num_iterations; i++) {
        heap_array();
    }
    auto end_heap = high_resolution_clock::now();
    auto duration_heap = duration_cast<milliseconds>(end_heap - start_heap);
    cout << "Time for heap array: " << duration_heap.count() << " milliseconds" << endl;

    return 0;
}

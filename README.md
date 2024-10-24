# Task 1 Explanation

## Static Array:

The static array is declared outside the function, making it a globally allocated array. Its memory is allocated once and persists for the entire duration of the program. The function static_array just accesses and modifies this pre-allocated array.

## Stack Array:

The stack array is declared inside the stack_array function. This means that every time the function is called, the array is allocated and deallocated on the stack. Stack allocation is typically fast because it only involves adjusting the stack pointer.

## Heap Array:

The heap array is dynamically allocated using new[] and deallocated using delete[] in heap_array. Heap allocation is generally slower than stack allocation due to the more complex memory management required for the heap.

## Time Measurement:

The chrono::high_resolution_clock is used to measure the time taken for each of the three types of array allocations.

## Code Output:

Time for static array: 18276 milliseconds

Time for stack array: 18827 milliseconds

Time for heap array: 26707 milliseconds

Static array:  The array is allocated once, so no repeated allocations occur. Accessing and modifying the array is fast since it’s in global memory.

Stack array:  Each function call involves pushing and popping memory from the stack, which introduces some overhead, but the operations are still relatively fast.

Heap array:  Each allocation and deallocation (using new and delete) introduces significant overhead compared to stack operations, leading to much higher execution times.


# Task 2 Explanation

# Static Binding

Static binding occurs at compile time, where the method to be executed is determined based on the type of the reference variable, not the actual object it refers to. This means the compiler decides which method to call. Static binding is associated with the new keyword in C#. Defining a method in a derived class with the new keyword hides the base class method with the same name. This form of method hiding is resolved at compile time. If you call the method on a base class reference, the base class version will be invoked, regardless of whether the object is actually an instance of the derived class. 

# Dynamic Binding

Dynamic binding occurs at runtime, where the actual method that gets called is determined based on the object being referred to. Dynamic binding is achieved using the virtual and override keywords in C#.

When a method is marked as virtual in the base class, it tells the compiler that this method can be overridden in derived classes.  The override keyword is used in the derived class to provide a new implementation of the base class's virtual method. When a method is overridden, the runtime determines which version of the method to call based on the actual type of the object.




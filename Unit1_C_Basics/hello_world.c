// Robert Zessin

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define NUMBER 5

int main(int argc, char* argv[]){
    printf("Hello world!\n");
    printf("things\n");
    printf("%d) option %s", 1, "ONE");

    //vairbales are statically typed
    int number = 32;
    char phrase[20] = "Hello world!";

    for (int x=0; x < NUMBER; x++){

    }

    int whole_number = 42;
    int* whole_number_pointer = &whole_number;

    *whole_number_pointer = 21;

    printf("\n\n%d\n", whole_number);
    printf("\n\n%d", *whole_number_pointer);
    printf("\n\n%p", whole_number_pointer);

    printf("\n\nbytes in int: %ld\n", sizeof(int));

    whole_number_pointer += 1;
    printf("\n\n%p", whole_number_pointer);

    int* malloced_int =
        (int*) malloc(sizeof(int));

    double* malloced_double =
        (double*) malloc(sizeof(int));
    *malloced_double = 102.45;

    printf("\n\n%lf", *malloced_double);

    free(malloced_double);

    int* bad_pointer = (int*) 42;
    //printf("%d", *bad_pointer);

    int num;
    printf("prompt!");
    scanf("%d", &num);

    int* array = (int*) calloc(5, sizeof(int));

    //update element at index 3
    // array[3]
    *(array +3) = 56;
    
    

    return 0; // no errors
    
}
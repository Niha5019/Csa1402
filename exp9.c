#include <stdio.h>

int main()
{
    printf("Original Grammar:\n");
    printf("S -> (L) | a\n");
    printf("L -> L,S | S\n\n");

    printf("After eliminating left recursion:\n");
    printf("S -> (L) | a\n");
    printf("L -> SL'\n");
    printf("L' -> ,SL' | e\n");

    return 0;
}
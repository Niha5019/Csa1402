#include <stdio.h>

int main()
{
    printf("Original Grammar:\n");
    printf("S -> iEtS | iEtSeS | a\n");
    printf("E -> b\n\n");

    printf("After left factoring:\n");
    printf("S -> iEtSS' | a\n");
    printf("S' -> eS | e\n");
    printf("E -> b\n");

    return 0;
}
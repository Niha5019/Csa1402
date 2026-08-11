%{
#include<stdio.h>

int count = 0;
%}

%%
[aAeEiIoOuU] { count++; }
\n           { return 0; }
.            ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter String: ");
    yylex();
    printf("Total Vowels = %d\n", count);
    return 0;
}
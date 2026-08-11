%{
#include <stdio.h>
%}

/* Definitions */

%%
/* Rules Section */

[0-9]+      { printf("Number\n"); }
[a-zA-Z]+   { printf("Word\n"); }
\n          ;
.           { printf("Special Character\n"); }
%%

/* User Functions */

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter Input: ");
    yylex();
    return 0;
}
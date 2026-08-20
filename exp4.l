%{
#include <stdio.h>
%}

%%
"+"                               { printf("Valid operator: +\n"); }
"-"                               { printf("Valid operator: -\n"); }
"*"                               { printf("Valid operator: *\n"); }
"/"                               { printf("Valid operator: /\n"); }

[ \t\n]+                         ;

.                                 { printf("Invalid operator: %s\n", yytext); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter an operator:\n");
    yylex();
    return 0;
}flex exp6.l

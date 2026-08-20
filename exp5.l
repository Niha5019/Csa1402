%{
#include <stdio.h>

int spaces = 0;
int tabs = 0;
int newlines = 0;
%}

%%
" "                               { spaces++; }
"\t"                              { tabs++; }
"\n"                              { newlines++; }
.                                 ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter text:\n");
    yylex();

    printf("\nNumber of spaces = %d\n", spaces);
    printf("Number of tabs = %d\n", tabs);
    printf("Number of newlines = %d\n", newlines);

    return 0;
}
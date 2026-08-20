%{
#include <stdio.h>
%}

%%
^[a-zA-Z_][a-zA-Z0-9_]*\n        {
                                    printf("Valid Identifier\n");
                                  }

^[0-9][a-zA-Z0-9_]*\n             {
                                    printf("Invalid Identifier\n");
                                  }

^.*\n                              {
                                    printf("Invalid Identifier\n");
                                  }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter an identifier:\n");
    yylex();
    return 0;
}
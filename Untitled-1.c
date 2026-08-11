#include <stdio.h>
#include <ctype.h>
#include <string.h>

int main() {
    char str[200];
    int i = 0;

    printf("Enter a C statement:\n");
    fgets(str, sizeof(str), stdin);

    while (str[i] != '\0') {

        if (isspace(str[i])) {
            i++;
        }

        else if (isalpha(str[i]) || str[i] == '_') {
            printf("Identifier: ");
            while (isalnum(str[i]) || str[i] == '_') {
                printf("%c", str[i]);
                i++;
            }
            printf("\n");
        }

        else if (isdigit(str[i])) {
            printf("Constant: ");
            while (isdigit(str[i])) {
                printf("%c", str[i]);
                i++;
            }
            printf("\n");
        }

        else if (strchr("+-*/%=<>", str[i])) {
            printf("Operator: %c\n", str[i]);
            i++;
        }

        else {
            i++;
        }
    }

    return 0;
}
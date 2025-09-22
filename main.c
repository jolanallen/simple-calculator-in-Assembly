#include <stdio.h>


extern long addition(long a, long b);
extern long soustraction(long a, long b);
extern long multiplication(long a, long b);
extern long division(long a, long b);
extern long square(long a, long b);
int result;


int main() {
    printf("=== Simple Calculator ===\n");
    printf("This calculator only supports basic operations: +  -  *  /\n");
    printf("Expected format: first_number operator second_number\n");
    printf("Example: 5 + 3\n\n");

    printf("1 - Enter the first number\n");
    printf("2 - Enter the operation sign (+, -, *, /, ^ (square))\n");
    printf("3 - Enter the second number\n");

    long first_number;
    char operator;
    long second_number;

    scanf("%ld %c %ld", &first_number, &operator, &second_number);
    printf("The result of %ld %c %ld is %ld\n", first_number, operator, second_number, result);

   switch (operator) {
    case '*':
        result = multiplication(first_number, second_number);
        printf("The result of %ld %c %ld is %ld\n", first_number, operator, second_number, result);
        break;
    case '+':
        result = addition(first_number, second_number);
        printf("The result of %ld %c %ld is %ld\n", first_number, operator, second_number, result);
        break;
    case '-':
        result = soustraction(first_number, second_number);
        printf("The result of %ld %c %ld is %ld\n", first_number, operator, second_number, result);
        break;
    case '/':
        result = division(first_number, second_number);
        printf("The result of %ld %c %ld is %ld\n", first_number, operator, second_number, result);
        break;
     case '^':
        result = square(first_number, second_number);
        printf("The result of %ld %c %ld is %ld\n", first_number, operator, second_number, result);
        break;
    default:
        printf("Unknown operator '%c'\n", operator);
        result = 0;
        break;
    };

    return 0;
};

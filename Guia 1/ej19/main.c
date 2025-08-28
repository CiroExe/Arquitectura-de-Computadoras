#include <stdio.h>
#include <stdlib.h>
#include <atoi.h>

int suma(int, int);
int resta(int, int);
int mult(int, int);
int div(int, int);
int (*operaciones[])(int, int) = {suma, resta, mult, divi};

int main(int argc, char *argv[])
{

    if (argc < 3) {
        printf("error falta parámetro A\n");
        return 1;
    }

    int op = atoi(argv[1]);
    if (op < 0 || op > 3) {
        printf("error operación inválida\n");
        return 1;
    }

    int a = atoi(argv[2]);
    int b = (argc > 3) ? atoi(argv[3]) : 0;

    int resultado = operaciones[op](a, b);
    printf("%d\n", resultado);
    return 0;
}

int suma(int a, int b) { return a + b; }
int resta(int a, int b) { return a - b; }
int mult(int a, int b) { return a * b; }
int div(int a, int b) { return b != 0 ? a / b : 0; }

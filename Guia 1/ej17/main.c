#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX 20
#define MASK 0xDF

void convierteMayus(char *);
int main()
{
    char palabra[MAX];

    strcpy(palabra, "otorrinolaringologo");
    printf("%s\n", palabra);
    convierteMayus(palabra);
    printf("%s\n", palabra);
    return 0;
}

void convierteMayus(char palabra[]){

    for(int i = 0; i < MAX; i++){
        palabra[i] = palabra[i] & MASK;
    }
}

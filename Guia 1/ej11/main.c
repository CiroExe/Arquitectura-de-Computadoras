#include <stdio.h>
#include <stdio.h>
#define MAX 8 // Para mostrar 8 bits

void convierteString(int nro, char *s) {
    int i;
    for (i = MAX - 1; i >= 0; i--) {
        s[i] = (nro & 1) ? '1' : '0'; // Extrae el bit menos significativo
        nro >>= 1; // Desplaza a la derecha para el siguiente bit
    }
    s[MAX] = '\0'; // Termina la cadena
}

int main() {
    int nro = -25;
    char s[MAX + 1]; // +1 para el '\0'
    convierteString(nro, s);
    printf("%d  %s\n", nro, s);
    return 0;
}

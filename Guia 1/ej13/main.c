#include <stdio.h>
#include <stdlib.h>

int main()
{
    char byte = 0xA;
    printf("%X\n", byte);
    diasActivos(byte);
    return 0;
}

void diasActivos(char byte){
    int i;
    char* nombres[] = {
        "Domingo",  // Bit 1
        "Lunes",    // Bit 2
        "Martes",   // Bit 3
        "Miercoles",// Bit 4
        "Jueves",       // Bit 5 (sin uso)
        "Viernes",
        "Sabado"  // Bit 6
    };
    for(i=0;i<8;i++){
        if(byte & 1)
            printf("%s\n", nombres[i]);
        byte = byte >> 1;
    }
}

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>  // Opcional si querés usar uint16_t
#define FECHA 10

unsigned short codificaFecha(unsigned short, unsigned short, unsigned short);
void decodificaFecha(unsigned short, unsigned short *, unsigned short *, unsigned short *);

int main()
{
    unsigned short dia, mes, anio, num;
    char fecha[FECHA];

    printf("Ingrese un entero de 2 bytes: \n");
    scanf("%hu", &num);  // %hu para unsigned short

    printf("Hexadecimal: %04X\n", num);
    printf("Decimal sin signo: %hu\n", num);

    decodificaFecha(num, &dia, &mes, &anio);

    printf("Codificado nuevamente: %04X\n", codificaFecha(dia, mes, anio));

    return 0;
}

void decodificaFecha(unsigned short num, unsigned short *dia, unsigned short *mes, unsigned short *anio)
{
    *dia  = (num >> 11) & 0x001F;  // Bits 15–11
    *mes  = (num >> 7)  & 0x000F;  // Bits 10–7
    *anio = num & 0x007F;          // Bits 6–0

    unsigned short anioReal;
    if (*anio > 50)
        anioReal = *anio + 1900;
    else
        anioReal = *anio + 2000;

    printf("Fecha decodificada: %hu-%hu-%hu\n", anioReal, *mes, *dia);
}

unsigned short codificaFecha(unsigned short dia, unsigned short mes, unsigned short anio)
{
    return ((dia & 0x001F) << 11) | ((mes & 0x000F) << 7) | (anio & 0x007F);
}


#include <stdio.h>
#include <stdlib.h>

int main()
{
    short int n = 0X02A3;
    printf("%X\n",n >> 8);
    printf("%X\n", n & 0xFF);
    printf("%X\n", n & 0x0001);
    printf("%X\n", n >> 15);
    printf("%X\n", n >> 4);
    printf("%X\n", n & 0xF);
    return 0;
}

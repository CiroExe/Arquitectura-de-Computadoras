#include <stdio.h>
#include <stdlib.h>

/*
Realizar programa en C para cifrar/descifrar un archivo TXT con una palabra clave pasada
por parámetro (NOTA: el archivo debe abrirse como binario). El programa debe recibir por
parámetros la palabra clave, el archivo origen y el archivo destino. El cifrado debe hacerse
byte a byte con cada byte del archivo y la palabra utilizando xor (^) (la palabra se utiliza
cíclicamente).
Probar el programa creando un archivo de texto y pasarlo dos veces por el programa
utilizando la misma palabra clave.
*/
int main(int argc, char *argv[])
{
    FILE *origen = fopen(argv[2], "rb");
    FILE *destino = fopen(argv[3], "wb");
    char *clave = argv[1];
    char byte, x;
    int i = 0;

    if(argc!=4){
        printf("Cantidad de parametros incorrecta");
        if(origen == NULL || destino == NULL)
            printf("No se pudo abrir alguno de los dos archivos");
        else{
            fread(&byte, 1, 1, origen);
            while (!feof(origen)){
                x = byte ^ argv[1][i];
                fwrite(&x, 1, 1, destino);
                fread(&byte, 1, 1, origen);
                i++;
                if (argv[1][i] == '\0')
                    i = 0;
            }
        }
        fclose(origen);
        fclose(destino);
    }
    return 0;
}

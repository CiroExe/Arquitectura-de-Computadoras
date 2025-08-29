/*
Utilizando el algoritmo anterior, construya un programa que calcule el factorial de un número
ingresado por teclado.
*/

mov edx, ds 
mov eax, 0x01
ldh ecx, 0x04
ldl ecx, 0x01
sys1

mov ebx, [edx]
cmp ebx, 0
jz fin

mov efx, ebx
mov ecx, efx
mov eax, 0

loop:
sub efx, 1
otro:
add eax, ebx
sub ecx, 1
cmp ecx, 0
jnz otro
mov ecx, efx
cmp efx, 0
jnz loop:

fin:
mov [4], eax 
mov edx, ds
add edx, 4
mov eax, 0x01
ldh ecx, 0x04
ldl ecx, 0x01
sys 2
stop


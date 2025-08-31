/*
Se ingresan una serie de números naturales, terminada con un número negativo. Mostrar por 
cada número ingresado la cantidad de bits en 1 que contiene su representación binaria.  
*/

mov [4], 0
otro:
mov edx, ds
mov eax, 0x01
ldh ecx, 0x04
ldl ecx 0x01
sys 1
cmp [edx], 0
jn fin
xor ac, ac
mov eax, [edx]
loop:
cmp eax, 0
jz otro
jnn sigue
add ac, 1
sigue:
shl eax, 1
jmp loop
fin:
add edx, 4
mov [edx], ac
mov eax, 0x01
ldh ecx, 0x04
ldl ecx, 0x01
sys 2
stop



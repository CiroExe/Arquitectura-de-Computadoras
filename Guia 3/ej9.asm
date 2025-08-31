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
jn stop
xor ac, ac
mov eax, [edx]
loop:
cmp eax, 0
jz fin
mov ebx, eax
and ebx, 0x80000000
cmp ebx, 0
jz sigue
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
jmp otro
stop:
stop

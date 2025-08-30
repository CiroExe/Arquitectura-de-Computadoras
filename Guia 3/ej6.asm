/*
Suponiendo que no existe la instrucción DIV, crear un algoritmo que reciba en EBX y ECX los
dos valores y retorne en EAX el resultado de la división, dejando en AC el resto.
*/

mov edx, ds
mov eax, 0x01
ldh ecx, 0x04
ldl ecx, 0x01
sys 1
mov ebx, [edx]
mov eax, 0x01
ldh ecx, 0x04
ldl ecx, 0x01
sys 1
mov ecx, [edx]
cmp ecx, 0
jz fin
mov eax, 0
mov ac, 0
sigue:
add ac, ecx
cmp ebx, ac
jnn fin
add eax, 1
jmp sigue
fin:
mov edx, ds
add edx, 4
mov [4], eax
mov eax, 0x01
ldh ecx, 0x04
sys 2
stop



mov [4], 0; inicializo donde voy a guardar el resultado
mov edx, DS
ldh ecx, 0x04
ldl ecx, 0x01
mov eax, 0x01
sys 1

loop:
cmp [edx],0
jz fin
mov ebx, [edx]; copio el contenido de edx en ebx para no modificar el registro original
and ebx, 1; filtro el bit menos significativo
shl [4], 1
add [4], ebx
shr [edx], 1
jmp loop

fin:
mov edx, DS
add edx, 4
ldh ecx, 0x04
ldl ecx 0x01
mov eax, 0x01
sys 2
stop
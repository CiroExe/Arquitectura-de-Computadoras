/*
 Suponiendo que no existe la instrucción MUL, crear un algoritmo que reciba en EBX y ECX los
dos valores y retorne en EAX su producto.
*/

mov edx, ds 
mov eax, 0x01
ldh ecx, 0x04
ldl ecx, 0x01
sys 1
mov ebx, [edx]
mov edx, ds
mov eax, 0x01
ldh ecx, 0x04
ldl ecx, 0x01
sys 1
mov ecx, [edx]
mov eax, 0
mov ac, ecx; asigno en ac la cantidad de veces que voy a multiplicar ebx
otro:
add eax, ebx;
sub ecx, 1;
cmp ecx, 0
jnz otro
mov ac, eax; guardo valor de eax en ac
mov edx, ds
mov eax, 0x01
ldh ecx, 0x04
ldl ecx, 0x01
sys 2
stop


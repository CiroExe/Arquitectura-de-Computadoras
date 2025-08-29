/*Calcular e imprimir el promedio de una lista de números naturales que se ingresan por teclado.
El fin de la lista se indica con un número negativo
 */
mov [4], 0
mov edx, ds
xor ac, ac
otro:
ldh ecx, 0x04
ldl ecx, 0x01
mov eax, 1
sys 1
cmp [edx], 0
jn fin
add ac, 1
add [4], [edx]
jmp otro
fin:
cmp ac, 0
jz stop
div eax, ac
mov eax, 1
ldh ecx, 4
ldl ecx, 1
sys 2
stop



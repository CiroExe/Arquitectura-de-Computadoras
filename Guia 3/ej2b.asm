        mov [4], 0
otro:   mov edx, ds
        ldl ecx, 1
        ldh ecx, 4
        mov eax 1
        sys 2
        cmp [0], 0
        jz sigue
        cmp [0], 1
        jnz fin
sigue:  shl [4], 1
        or  [4], [0]
        jmp otro
fin:    mov edx, ds
        add edx, 4
        ldl ecx, 1
        ldh ecx, 4
        mov eax, 0x1F
        sys 2
        stop

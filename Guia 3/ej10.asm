	MOV EDS, DS;lee n
	MOV EAX, 1
	LDL ECX, 1
	LDH ECX, 4
	SYS 1
	ADD EDX, 4

otro1:  SYS 1
	CMP [EDX], 0
	JN nuevo
	ADD EDX, 4
	JMP otro1

nuevo:  MOV ECX, [0]
	ADD ECX, -1

otro2:  SYS 1
	CMP ECX, 0
	JN iteracion
	ADD EDX, 4
	SUB ECX, 1
	JMP otro2

	MOV EBX, 0; i = 0 para vec1
	MOV EEX, 0; j = 0 para vec2
iter:   CMP EBX, EDX
	JNN fin
	MOV EFX, EBX
	MUL EFX, 4
	ADD EFX, DS
	ADD EFX, 0

sigue:  CMP EEX, [24]; j < M ?
	JNN iter; si es 0 o positivo itera ya que recorrio todo el vec2
	
	MOV EGX, EEX
	MUL EGX, 4
	ADD EGX, DS
	ADD EGX, 28; base del vec2
	CMP [EGX], [EEX]
	JZ sigue
	JNZ res

res:	MOV [DS+40], EGX

fin:    MOV EAX, 1
	MOV EDX, [DS+40]
	LDH ECX, 4
	LDL ECX, 1
	SYS2


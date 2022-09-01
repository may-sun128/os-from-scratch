;
; Simple boot sector program that demonstrates the stack 
;

mov ah, 0x0e

mov bp, 0x8000 ; b(ottom)p(art) at 0x8000
mov sp, bp     ; sp = bp(memory addr)

push 'A'
push 'B'
push 'C'

pop bx ; should be C
mov al, bl
int 0x10 

pop bx ; should be B
mov al, bl
int 0x10

mov al, [0x7ffe] ; don't totally understand this 
int 0x10

jmp $

times 510-($-$$) db 0
dw 0xaa55

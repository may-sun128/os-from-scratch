; Simple boot sector program that loops forever

; Infinite loop (e9 fd ff) 
loop: ; define label, 'loop', that will allow us to come back to it, forever
	jmp loop ; jump to memory address of current instruction 

; program must fit into 512 bytes, so pad the program with enough zero bytes to bring us to the 510th byte 
times 510-($-$$) db 0 

; From the NASM documentation:

; "NASM supports two special tokens in expressions, allowing calculations to involve the current assembly position: the $ and $$ tokens. 
; $ evaluates to the assembly position at the beginning of the line containing the expression
; so you can code an infinite loop using JMP $. $$ evaluates to the beginning of the current section,
; so you can tell how far into the section you are by using ($-$$)."

; write the last two bytes (one word), the magic number, so BIOS knows we are a boot sector  
dw 0xaa55

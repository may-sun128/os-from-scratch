; enter tty
mov ah, 0x0e 


; ***** Attempt One *****


; fails because it tries to print the memory address (pointer)
; instead of its actual contents 

;mov al, "1"        ; move string value to register al
;int 0x10           ; print al to tty
;mov al, the_secret ; move the_secret (memory addr)  to register al
;int 0x10           ; print al to tty

; prints `i` and a special character (symbol for female)


; ***** Attempt Two *****


; tries to print the memory addr of 'the secret' (correct) 
; however, BIOS places the boot sector binary at the addr of 0x7c00
; so we need to add that padding before hand 

;mov al, "2"          ; move string value of 2 to al memory addr 
;int 0x10             ; print al to tty
;mov al, [the_secret] ; move the_secret (value?) to memory addr to al 
;int 0x10             ; print


; ***** Attempt Three *****


; *add* the bios starting offset 0x7c00 to the memory address of the X
; and then derefernce the content of that pointer 
; we need the help of register bx because `mv al, [ax]` is illegal(??) 
; a register can't be used as source and destination for the same command 

mov al, "3"
int 0x10 ; 16
mov bx, the_secret 
add bx, 0x7c00 ; 31744
mov al, [bx]
int 0x10

jmp $

the_secret:
	db "X"

; zero padding/magic bios number

times 510-($-$$) db 0
dw 0xaa55

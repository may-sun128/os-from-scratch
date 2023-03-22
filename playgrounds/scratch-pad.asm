;
; A simple boot sector that prints a message to the screen using a BIOS routine
;

mov ah, 0x0e ; int 10/ah = 0eh -> scrolling teletype BIOS routine

; --------------------------

mov bx, 1
mov cx, 1
add bx, cx
int 0x10

; --------------------------

jmp $ ; Jump to the current address (i.e. forever) 

;
; padding and the magic bios number 
;

times 510 - ($-$$) db 0 ; pad the boot sector with zeros

dw 0xaa55 ; magic number so the BIOS knows we are a boot sector 

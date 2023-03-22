; page 32

[bits 32]
; define constants
VIDEO_MEMORY equ 0x8000 ; 32768
WHITE_ON_BLACK equ 0x0f ; 15

; prints a null-terminated string pointed to by EDX
print_string_pm:
    pusha 
    mov edx, VIDEO_MEMORY 
; *unfinished* 

;mov bx , 30
;if ( bx <= 4) {
;mov al , ’A ’
;} else if ( bx < 40) {
;mov al , ’B ’
;} else {
;mov al , ’C ’
;}
;mov ah , 0 x0e ; int =10/ ah =0 x0e -> BIOS tele - type output
;int 0 x10 ; print the character in al
;jmp $
; Padding and magic number.
;times 510 -( $ - $$ ) db 0
;dw 0 xaa55

mov ah, 0x0e

je bx, 40
	; mv al, 'A'
jel bx, 40 
	; mv al, 'B'
j mv al, 'C' 


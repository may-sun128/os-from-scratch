disk_load: 
	push dx ; store dx for later 
	mov ah, 0x02 ; bios read sector function 
	mov al, dh   ; read dh sectors
	mov ch, 0x00 ; read cylinder 0 
	mov dh, 0x00 ; read head 0 
	mov cl, 0x02 ; start reading second sector 

	int 0x13 ; bios interupt 

	jc disk_error 

	pop dx
	comp dh, al    ; if al (sectors read) != dh (sectors expected)
	jne disk_error ; display error message 
	ret 

disk_error 
	mov bx, DISK_ERROR_MSG
	call print_string
	jmp $

; Variables
DISK_ERROR_MSG	 DB "Disk read error!", 0 

 
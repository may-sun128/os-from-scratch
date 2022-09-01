mov al, 'H' ; al - 8 bits

jmp my_print_function
return_to_here:

my_print_function: 
	mov ah, 0x0e
	int 0x10 
	jump return_to_here


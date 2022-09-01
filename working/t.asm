; boot sector for read-disk.asm 

[org 0x7c00]
	mov [BOOT_DRIVE], dl ; bios stores

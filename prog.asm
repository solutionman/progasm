section .data

                msg db 'Message from asm program, seems like you did it, congrats!',0xa, 0xd
                len equ $ - msg

section .text

                global _start

_start:

                ; print message with mov

                mov eax, 4    ; 4 - sys_write
                mov ebx, 1    ; 1 - stdout
                mov ecx, msg  ; our message
                mov edx, len  ; message lenght

                int 0x80      ; 0x80 - interruption of cpu for printing message

                ; exit from program

                mov eax, 1    ; 1 - sys_exit
                mov ebx, 0    ; 0 - error code

                int 0x80      ; 0x80 - interruption of cpu for exit from program

data segment
sayi1 db 5
sayi2 db 4
sayi3 db 3
ends
extra segment
sayi4 db 6
sayi5 db 7
ends
stack segment
dw 128 dup(0)
ends
code segment
start:
; set segment registers:
mov ax, data
mov ds, ax
mov ax, extra
mov es, ax
LEA SI,sayi1
LEA DI,sayi2
MOV AL,[DI]
 MOV CL,ES:[DI]
mov ax, 4c00h ; exit to operating system.
int 21h ; exit to operating system.
ends
end start ; set entry point and stop the assembler.
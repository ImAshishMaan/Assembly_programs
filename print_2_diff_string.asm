
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
n1 db '12345678  $'
c1 db 'Hello bro$'

.code
main proc
    mov ax,@data      ;it moves memory location of data into ax registor
    mov ds,ax         ;moves  data address to ds so that data segment sets initialized as heap memory to access variables fast
    ;mov dl,n1
    lea dx,n1         ;lea=Load effective address(in this first variable point the address of net variable
    mov ah,9 
    int 21h
    
    
   ; mov dl,c1
    lea dx,c1
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h

main endp
end main




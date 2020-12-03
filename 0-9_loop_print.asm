
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
.code
main proc
    mov cx,10            ;how many times loop will run
    mov dl,48            ;insert 48(0) un dl
    
L1:
    mov ah,2
    int 21h
    inc dl               ;increment in number
    
    loop L1
    
    mov ah,4ch
    int 21h
    
main endp
end main




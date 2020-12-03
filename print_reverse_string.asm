
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data 
st db 'ashish'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea si,st
    
    mov cx,6
    
L1:
    mov dx,[si]
    mov ah,2
    int 21h
    push dx
    inc si
    
    loop L1
    mov cx,6
    
L2: 
;    mov dx,10
;    mov ah,2
;    int 21h
;    mov dx,13
;    mov ah,2            
;    int 21h
    pop dx
    mov ah,2
    int 21h
    
    loop L2
    
    mov ah,4ch
    int 21h
main endp
end main
        





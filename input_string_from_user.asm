
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data

var1 db 100 dup('$') 
;var2 db 'maan$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea si,var1
    
L1:   
    mov ah,1
    int 21h
    cmp al,13
    je programend
    
    mov [si],al
    inc si
    jmp L1
programend:
    mov dl, 10
    mov ah,2
    int 21h
    mov dl, 13
    mov ah,2
    int 21h 
    
    ;lea dx,var2  
    lea dx,var1
    mov ah,9
    int 21h
 
    mov ah,4ch
    int 21h
main endp
end main




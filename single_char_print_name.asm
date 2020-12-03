
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
.code
main proc
    mov dl,'a'
    mov ah,2
    int 21h
    
    mov dl,'s'
    mov ah,2
    int 21h
    
    mov dl,'h'
    mov ah,2
    int 21h
    
    mov dl,'i'
    mov ah,2
    int 21h
    
    mov dl,'s'
    mov ah,2
    int 21h
    
    mov dl,'h'
    mov ah,2
    int 21h  
    
    mov ah,4ch
    int 21h
main endp
end main







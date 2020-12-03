
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data 
q db ?
r db ?
even db ' number is even $'
odd db ' number is odd $'

.code
main proc
    mov ax,@data 
    mov ds,ax
    mov ah,1
    int 21h
    
    
    mov bl,2
    div bl
    
    mov q,al
    mov r,ah
    
    mov dl,q 
    add dl,48
    mov ah,2
    int 21h
    
    mov dl,r
    add dl,48
    mov ah,2
    int 21h
    ;mov ah,4ch
;    int 21h
    
    
    cmp dl,48
    je even1
    
    lea dx,odd
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h
    
    
even1:
    lea dx,even
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h 

main endp
end main
        



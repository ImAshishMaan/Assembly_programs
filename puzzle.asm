
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data 
v4 db 'equal$'
.code

main proc
    mov ax,@data
    mov ds,ax
    mov ah,1
    int 21h
    
    mov dl,al
    
    int 21h
    cmp al,dl
    je p
    mov ah,4ch
    int 21h
    
p:
    mov ah,9
    lea dx,v4    
        int 21h
        
        mov ah,4ch
        int 21h
        
       
main endp
end main
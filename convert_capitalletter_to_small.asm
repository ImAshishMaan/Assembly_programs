
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h

.code
main proc 
    mov ah,1
    int 21h
    
    mov dl,al
    
    add dl,32
    ;sub dl,32
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h

main endp
end main
    
    




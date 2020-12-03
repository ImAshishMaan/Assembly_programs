
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
.code
main proc
;    mov ah,1
;    int 21h
;    
;    mov bl,al
;    
;    mov ah,1
;    int 21h
;    
;    mul al
   
   mov al,3
    mov bl,8
    mul bl
    
    aam  
    
    mov ch,ah
    mov cl,al
    
    mov dl,ch
    add dl,48
    mov ah,2
    int 21h
    
    mov dl,cl
    add dl,48
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
    
main endp
end main
    



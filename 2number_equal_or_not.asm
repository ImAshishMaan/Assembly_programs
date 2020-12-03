
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data 
msg1 db 'number is equal$'    
msg2 db 'number is not equal$' 
.code
main proc
    mov ax,@data
    mov ds,ax
    mov dl,'3'
    mov ah,1
    int 21h
    
    cmp al,dl
    je L1
    mov dx,offset msg2
    mov ah,9 
    int 21h 
    
    mov ah,4ch
    int 21h
   
L1:
    mov dx,offset msg1
    mov ah,9
    int 21h 
    
    mov ah,4ch
    int 21h
    
main endp
end main



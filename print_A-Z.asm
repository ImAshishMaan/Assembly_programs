
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
.code
main  proc
    mov dx,65
    mov cx,26
    
Loop1:
    mov ah,2
    int 21h 
    
  ;  mov dh,10
;    mov ah,2
;    int 21h
;    
;    mov dh,13
;    mov ah,2 
;    int 21h
;    
    
    inc dx
    
    loop Loop1;
    
    
main endp
end main



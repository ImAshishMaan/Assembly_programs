
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
.code
main proc
    mov dl,3
    mov cl,1
    add dl,cl
   ; sub dl,cl
   
    add dl,48     ; to convert dl value to ascii code
    
    ;mov dl,bl
    mov ah,2       ;for ah to print 
    int 21h
    
    mov ah,4ch
    int 21h
    
main endp
end main


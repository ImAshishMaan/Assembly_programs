
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
.code
main proc
    L1: 
        mov ah,1
        int 21h
        
        mov dl,'3'
        cmp al,dl
        je L1; 
        
        mov ah,4ch
        int 21h
 
main endp
end main
    





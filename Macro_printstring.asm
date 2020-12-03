
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
print macro s1
lea dx,s1
mov ah,9
int 21h
endm

.model small
.stack 100h
.data
str1 db 'hello$'
str2 db 'world$'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    print str1
    print str2
    
    mov ah,4ch
    int 21h

main endp
end main




; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data

arr1 db '1','2','3','4','5'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea si,arr1
    
    mov cx,5
L1:    
    mov dx,[si]
    mov ah,2
    int 21h
    inc si
     
    loop L1 
    
    mov ah,4ch
    int 21h
    
main endp
end main




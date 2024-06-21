          
.MODEL small
.STACK 200h  


.DATA
Msg DB 'mensaje 1',0Ah,0Dh,'$' 



.CODE
inicio:
    mov ax, @data
    mov ds,ax
    
    mov ah,08h
    int 21h 
    
    mov cl, al
    
    imprimir:
        mov ah,09h
        lea dx,Msg
        int 21h
    loop imprimir
     
    mov ah,4ch
    int 21h
    
        
    end inicio
          
.MODEL small
.STACK 200h  


.DATA
Msg DB 'mensaje 1',0Ah,0Dh,'$' 


.CODE
inicio:          
    mov ah,08h
    int 21h   
    
    sub al,30h
     
    xor ah,ah
    xor cx,cx 
    
    mov cx,ax
    
    mov ax, @data

    mov ds,ax
   
    
    imprimir:
        mov ah,09h
        lea dx,Msg
        int 21h
    loopz imprimir
    ;loope loop loopne loopz loopnz
        
    end inicio     
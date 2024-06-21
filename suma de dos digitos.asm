org 100h
.MODEL small
.STACK 200h  


.DATA
Msg DB 'mensaje 1',0Ah,0Dh,'$' 


.CODE
inicio:
    
    
    
    mov ah,01h
    int 21h
    sub al,30h
    mov bl,al
    
    int 21h
    sub al,30h
    mov cl,al
    
    int 21h
    sub al,30h
    add bl,al
    
    int 21h
    sub al,30h
    add cl,al
    
    mov ax,cx
    aaa
    mov cx,ax
    add bl,ch
    mov ax,bx
    aaa
    mov bx,ax
    mov dl,bh
    add dl,30h
    
    mov ah,02h
    int 21h
    
    mov dl,bl 
    
    add dl,30h
    int 21h
    mov dl,cl
    
    add dl,30h
    int 21h

    
    end inicio
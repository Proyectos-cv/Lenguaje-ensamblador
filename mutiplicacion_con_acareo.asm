          
.MODEL small
.STACK 200h  


.DATA
Msg DB 'mensaje 1',0Ah,0Dh,'$' 


.CODE
inicio:


    mov ah, 01h
    int 21h
    sub al,30h
    mov bl,al 
    mov ah, 01h
    int 21h    
    sub al,30h
    mul bl  
    
    aam
          
    or ax,3030h
    mov bx,ax 
    
    mov ah, 02h 
    mov dl, bh
    int 21h 
    
    mov ah, 02h
    mov dl, bl
    int 21h
    
        
    end inicio
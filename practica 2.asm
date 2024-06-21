
.MODEL small
.STACK 200h  


.DATA
Msg DB 13,10,'mensaje 1 $'
Msg1 DB 13,10,'mensaje 2 $'
Msg2 DB 13,10,'mensaje 3 $'
Msg3 DB 13,10,'mensaje 4 $'
Msg4 DB 13,10,'mensaje 5 $'

.CODE
inicio:
    mov ax,@data   
    mov ds,ax

    mov dx,OFFSET Msg
    mov ah,9h
    int 21h  
    
    mov dx,OFFSET Msg1
    mov ah,9h
    int 21h
    
    mov dx,OFFSET Msg2
    mov ah,9h
    int 21h
    
    mov dx,OFFSET Msg3
    mov ah,9h
    int 21h
    
    mov dx,OFFSET Msg4
    mov ah,9h
    int 21h
    
    end inicio






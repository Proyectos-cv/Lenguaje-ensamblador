
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
    call imprimir  
    
    mov dx,OFFSET Msg1
    call imprimir
    
    mov dx,OFFSET Msg2
    call imprimir
    
    mov dx,OFFSET Msg3
    call imprimir
    
    mov dx,OFFSET Msg4
    call imprimir
    jmp finalizar
    
    imprimir:
        mov ah,9h
        int 21h
        ret
    finalizar:
        mov ah,4ch
        int 21h
    
    end inicio






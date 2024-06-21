         
.MODEL small
.STACK 200h  


.DATA
Msg DB 'niños',0Ah,0Dh,'$'  
Msg1 DB 'adolecentes',0Ah,0Dh,'$'
Msg2 DB 'adultos',0Ah,0Dh,'$'


.CODE
inicio:  
    MOV CX, 10 ; Contador de bucle
MOV bl, 0 ; Contador de niños
MOV bh, 0 ; Contador de adolescentes
MOV ch, 0 ; Contador de adultos

; Iniciar bucle 1-4 5-7 8-
LOOP_START:
   
    ; Incrementar contador correspondiente
    CMP cl, 0
    JE fin 
    
    ; Leer la edad de la persona actual
    MOV AH, 01h
    INT 21h
    SUB AL, 30h ; Convertir de ASCII a número

    
    CMP AL, 1
    JE ES_NINO
    CMP AL, 2
    JE ES_NINO
    CMP AL, 3
    JE ES_NINO
    CMP AL, 4
    JE ES_NINO
    
    CMP AL, 5
    JE ES_vato
    CMP AL, 6
    JE ES_vato
    CMP AL, 7
    JE ES_vato 
    
    CMP AL, 7
    ja ES_adulto 
    
   
    
    loop LOOP_START


ES_NINO:
    add bl,1 
    sub cl,1
    jmp LOOP_START
ES_vato:
    add bh,1 
    sub cl,1
    jmp LOOP_START  
ES_adulto:
    add ch,1  
    sub cl,1
    jmp LOOP_START  
    
fin:  

mov ax,@data   
    mov ds,ax

mov dx,OFFSET Msg
mov ah,9h
int 21h   

add bl,30h        
mov ah, 02h 
    mov dl, bl
    int 21h 
    
mov dx,OFFSET Msg1
mov ah,9h
int 21h

add bh,30h    
mov ah, 02h 
    mov dl, bh
    int 21h
    
mov dx,OFFSET Msg2
mov ah,9h
int 21h

add ch,30h    
mov ah, 02h 
    mov dl, ch
    int 21h

mov ah,4ch
    int 21h




    
        
    end inicio
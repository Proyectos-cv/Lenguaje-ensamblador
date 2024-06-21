print macro char
  mov ah,09h
  mov dx,offset char
  int 21h
endm


pide macro 
  mov ah,01h
    int 21h
endm  

añade macro 
  add dl,30h
    int 21h
endm    

divide macro 
  aaa
endm 

resta macro  
   sub al,30h
endm 


org 100h
.MODEL small
.STACK 200h  


.DATA
Msg DB 'mensaje 1',0Ah,0Dh,'$' 
mensaje1 DB 'suma',0Ah,0Dh,'$'

.CODE
inicio:
    
     print mensaje1 
     
    pide
    
    resta
    mov bl,al
    
    int 21h
    resta
    mov cl,al
    
    int 21h
    resta
    add bl,al
    
    int 21h
    resta
    add cl,al
    
    mov ax,cx
    
    divide
    
    mov cx,ax
    add bl,ch
    mov ax,bx
    
    divide  
    
    mov bx,ax
    mov dl,bh
    add dl,30h
    
    mov ah,02h
    int 21h
    
    mov dl,bl 
    
    añade
    mov dl,cl
    
    añade

    
    end inicio
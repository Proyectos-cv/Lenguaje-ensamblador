print macro char
  mov ah,09h
  mov dx,offset char
  int 21h
endm

asterisco macro
    mov dl,42d  
    mov ah,02h   
    int 21h
endm

cerrarprograma macro
    mov ah,04ch
    int 21h
endm

printsim macro char
  mov ah,02h
  int 21h
endm

introducir macro
    mov ah,07h
    int 21h
    mov dl, al
endm
.model small
.stack
.data   


;cadena db ' ? ? ? ? ? $' 
cadena0 db ' ? ?$'
contra db '123$'     

mensaje1 DB 'introduce contraseña',0Ah,0Dh,'$'
Msj1 DB 'no es correcto',0Ah,0Dh,'$' 
Msj2 DB 'es correcto',0Ah,0Dh,'$'  



con db 1
cont0 db 0
.code

.startup
Inicio:
    mov ax,@data 
    mov ds,ax

    print mensaje1
    mov cx,3 
    mov si,0 
    
    ciclo0:       

    introducir    
    mov cadena0[si],al 
    asterisco
    
    inc si
    cmp al,35h
    je cuenta0
continua0:
    loop ciclo0
    
push ES
mov AX,DS
mov ES,AX
mov cx,3
lea SI,contra
lea DI,cadena0
repe cmpsb  
JNE diferentes
jmp igual
pop ES 
    
cuenta0: 
    inc cont0
    jmp continua0

igual:
   
    print Msj2
    mov cx,10
    jmp adios
    

diferentes:
      
    print Msj1    
    dec con
    cmp con,0h
    JNE Inicio
    jmp adios 
    
    
adios:
cerrarprograma
print macro char
  mov ah,09h
  mov dx,offset char
  int 21h
endm

printasterisco macro
    mov dl,42d ;mandamos un asterisco a pantalla   
    mov ah,02h   
    int 21h
endm

Terminar macro
    mov ah,04ch
    int 21h
endm

printsim macro char
  mov ah,02h
  int 21h
endm

pedirse macro
    mov ah,07h
    int 21h
    mov dl, al
endm
.model small
.stack
.data
;cadena db ' ? ? ? ? ? $' 
cadena0 db ' ? ?$'
contra db 'gordo$'
mensaje DB 'Programa de login',0Ah,0Dh,'$'
mensaje1 DB 'Dame la password',0Ah,0Dh,'$'
Msj1 DB 'Pass Incorrecto',0Ah,0Dh,'$' 
Msj2 DB 'Acceso Correcto',0Ah,0Dh,'$'
linea DB '   ',0Ah,0Dh,'$'

con db 3
cont0 db 0
.code

.startup
Inicio:
    mov ax,@data 
    mov ds,ax
    print mensaje
    print mensaje1
    mov cx,5 ;la pass es de 4, el contador pide 4 veces
    mov si,0 
    
    ciclo0:       
    ;mov ah,07h ;Pedir un dato
    ;int 21h
    pedirse ;mandamos por macro    
    mov cadena0[si],al 
    printasterisco
    
    inc si
    cmp al,35h
    je cuenta0
continua0:
    loop ciclo0
    
push ES
mov AX,DS
mov ES,AX
mov cx,5
lea SI,contra
lea DI,cadena0
repe cmpsb  ;compara lo de si y di de arriba, es decir las cadenas
JNE NoIguales
jmp contraCorrecta
pop ES 
    
cuenta0: ;verifica que aun 
    inc cont0
    jmp continua0

contraCorrecta:
    print linea
    print Msj2
    mov cx,10
    jmp salir
    

NoIguales:
    print linea    
    print Msj1    
    dec con
    cmp con,0h
    JNE Inicio
    jmp salir
salir:
Terminar
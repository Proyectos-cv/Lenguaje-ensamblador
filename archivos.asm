imprime macro cadena
    mov ax,data
    mov ds,ax
    mov ah,09
    mov dx,offset cadena
    int 21h
endm

.model small
.stack
.data

msj db 0ah,0dh,'MENU','$'
msj2 db 0ah,0dh,'1.- crear archivo','$'  
msj3 db 0ah,0dh,'2.- abrir archivo','$'
msj4 db 0ah,0dh,'3.- modificar archivo','$'
msj5 db 0ah,0dh,'4.- eliminar archivo','$'
msj6 db 0ah,0dh,'5.- salir','$'
msj7 db 0ah,0dh,'el cerrado de un archivo se hace automatico','$'
msjelim db 0ah,0dh,'eliminado con exito','$'
msjcrear db 0ah,0dh,'creado con exito','$'
msjescr db 0ah,0dh,'escrito con exito','$'
msjnom db 0ah,0dh,'nombre del archivo','$'
cadena db 'cadena a escribir en el archivo','$'
nombre db 'cadenatonotepad.txt',0 ; nombre archivo debe terminar en 0
vec db 50 dup('$')  
mole db 50 dup('$')
handle db 0
linea db 10,13,'$'

.code
inicio:

menu: 
    imprime msj
    imprime msj2  
    imprime msj3
    imprime msj4
    imprime msj5 
    imprime msj6
    imprime msj7 
    
    mov ah,0dh
    int 21h
    ;comparamos la opcion que se tecleo
    mov ah,01h
    int 21h
    ;salta  
    cmp  al,31h
    je crear 
    cmp  al,32h
    je abrir 
    cmp  al,33h
    je pedir 
    cmp  al,34h
    je eliminar 
    cmp  al,35h
    je salir
    
    
    crear:
        mov ax,@data
        mov ds,ax
        ;crear
        mov ah,3ch
        mov cx,0
        mov dx,offset nombre
        int 21h
        jc salir ; si no se pudo crear
        imprime msjcrear
        mov bx,ax
        mov ah,3eh
        int 21h
        jmp menu
        
    abrir:
        ;abrir
        mov ah,3dh
        mov al,0h ; h solo lectura, 1h solo escritura, 2 lectura y escritura
        mov dx, offset nombre
        int 21h
        mov ah, 42h
        mov al,00h
        mov bx,ax
        mov cx,50
        int 21h
        ;leer archivo
        mov ah,3fh
        ;mov bx,ax
        mov bx,ax
        mov cx, 10
        mov dx, offset vec
        ;mov dl, vec[si]
        int 21h
        mov ah,09h
        int 21h
        
        ;cierre de archivo
        mov ah, 3eh
        int 21h
        jmp menu
     
     pedir:
        mov ah,01h
        int 21h
        mov vec[si],al
        inc si
        cmp al,0dh
        ja pedir
        jb pedir
     
     editar:
        ;abrir
        mov ah, 3dh
        mov al, 1h
        mov dx, offset nombre
        int 21h
        jc salir ;si hubo error
        ;escritura del archivo
        mov bx, ax;mover hadfile
        mov cx, si;numero de caracteres a grabar
        mov dx,offset vec
        mov ah,40h
        int 21h
        imprime msjescr
        ;cmp cx,ax
        ;jne salir ;error salir
        mov ah,3ah;cierre de archivo
        int 21h
        jmp menu
        
        
        
     eliminar:
        mov ah,41h
        mov dx, offset nombre
        int 21h
        jc salir;si hubo error
        imprime msjelim
        
     salir:
        mov ah,04ch
        int 21h
end
     
;https://www.youtube.com/watch?v=qz4ZJmaJjuI        
    
    
        
         
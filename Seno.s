    .data

pi: .float 3.1416
pi2: .float 9.8696
d: .float 16.0
c: .float 4.0
dos: .float 2.0
pin: .float -3.1416
cin: .float 5.0
rest: .float -1.0
casu: .float 1.57
cast: .float 4.71
casc: .float 6.2831

    .global seno
    .global coseno

    .text

seno:
    mov $0, %rbx # usaremos un registro como bandera
    
    #Creamos condiciones para cada uno de los casos
    ucomiss casu ,%xmm0 #if(1.57 == xmm0) true -> caso1:
    jb casoseno

    ucomiss pi ,%xmm0 #if(3.1415 == xmm0) true -> caso2:
    jb caso2

    ucomiss cast ,%xmm0 #if(4.71 == xmm0) true -> caso3:
    jb caso3

    ucomiss casc ,%xmm0 #if(6.2831 == xmm0) true -> caso4:
    jb caso4

caso2:
    movss pi,%xmm1 # le asignamos a xmm1 = pi 
    subss %xmm0,%xmm1 # restamos xmm1 = xmm1 - xmm0
    movss %xmm1,%xmm0 # le reasignamos a xmm0 = xmm1

    jb casoseno # Saltamos hasta la etiqueta que operamos el valor de x

caso3:
    subss pi,%xmm0 # Restamos a xmm0 pi, xmm0 = xmm0 -pi
    mov $1, %rbx # Cambiamos el valor de la bandera

    jb casoseno# Saltamos hasta la etiqueta que operamos el valor de x

caso4:
    movss pi,%xmm1 # le asignamos a xmm1 = pi 
    mulss dos,%xmm1 # dos = 2 lo multiplicamos por xmm1, xmm1 = xmm1 * dos
    subss %xmm0,%xmm1 # restamos xmm1 = xmm1 - xmm0
    movss %xmm1,%xmm0 # le reasignamos a xmm0 = xmm1

    mov $1, %rbx # Cambiamos el valor de la bandera

    jb casoseno# Saltamos hasta la etiqueta que operamos el valor de x

casoseno:
    movss %xmm0,%xmm4 #asiganmos valor de x a cada distintos registros para usarlos despues
    movss %xmm0,%xmm5 
    movss d,%xmm2 #asignamos valores flotantes a los registros d = 16.0
    movss pi,%xmm3 # pi = 3,1416 a xmm3 = pi

    subss %xmm0,%xmm3 #restamos 3.1416 - x = 2.1416 en el registro xmm3

    movss %xmm3,%xmm0 # asignamos el valor de xmm3 a xmm0 -> xmm0 = xmm3

    mulss %xmm2,%xmm4 # multiplicamos xmm4 = xmm2 * xmm4 
    mulss %xmm4,%xmm0 # xmm0 = xmm4 * xmm0

    movss %xmm5,%xmm4 # reasignamos valor a xmm4 = x
    movss c,%xmm6     # asignamos valores flotantes xmm6 = 4.0
    movss pi,%xmm3    # xmm3 = 3.1416
    movss cin,%xmm7   # xmm7 = 5.0

    subss %xmm5, %xmm3# restamos 3.1416 - x = 2.1416 en el registro xmm3

    movss %xmm3, %xmm5# asignamos el valor de xmm3 a xmm5 -> xmm5 = xmm3
    movss pi2,%xmm3   # asignamos pi = 3,1416 a xmm3 = pi

    mulss %xmm6,%xmm4 # multiplicamos xmm4 = xmm6 * xmm4
    mulss %xmm5,%xmm4 # multiplicamos xmm4 = xmm5 * xmm4
    mulss %xmm7,%xmm3 # multiplicamos xmm3 = xmm7 * xmm3
    subss %xmm4,%xmm3 # restamos xmm4 = xmm3 - xmm4
    
    divss %xmm3,%xmm0 #dividimos xmm0/xmm3 = al valor en seno(x)
    cmp $0,%rbx # Comparamos if(0==rbx)
    jz fin # Si se cumple saltamos la etiqueta comprobar y pasamos al fin, en caso contrario pasamos a comprobar

comprobar: # Valorizaremos los valores que pertenecen al rango de 3pi medios hasta 2pi
    mulss rest,%xmm0 # multiplicamos el registro xmm0 por -1 

fin: 
    ret

coseno:
    movss %xmm0, %xmm1
    movss %xmm0, %xmm2

    mulss dos, %xmm0
    mulss c, %xmm0 

    movss pi2, %xmm3
    
    subss %xmm0, %xmm3
    movss %xmm3, %xmm0

    mulss dos, %xmm1
    movss pi2, %xmm3

    addss %xmm1, %xmm3
    movss %xmm3, %xmm1

    divss %xmm1, %xmm0
    
fin1: 
    ret
    
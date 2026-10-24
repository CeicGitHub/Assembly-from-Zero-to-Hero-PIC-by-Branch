; En esta sección se esta cargando un valor de 15 en el Working register
; Colocar un breakpoint en goto main
; Observar en SFR's "WREG" "PCL" y STATUS" previo a cargar W y despues de hacerlo.
    
PROCESSOR 16F877A
#include <xc.inc>
PSECT resetVec,class=CODE,delta=2 
   
resetVec:
    goto    main
    
PSECT code
 
main: 
    movlw 0x0F

loop:
    goto loop

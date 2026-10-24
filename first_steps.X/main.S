; Le indica a "pic-as" ensambla este codigo para la arquitectura "PIC16F877A"
; "PIC16F877A" MCU - 8bits		
PROCESSOR 16F877A       
			
; Esto ocurre antes del "ensamblado" en el "preprocesador"
; Permite definiciones: PORTB, TRISB STATUS, INTCON, TMR0.. etc
#include <xc.inc>       
					  
; PSECT -- program section				  
; Properties/pic-as linker se configuro como -presetVec=0h
; Es decir: resetVect en dirección 0x0000
; El pic despues de un "reset" comienza a ejecutar apartir de 0x0000
PSECT resetVec,class=CODE,delta=2 
				  
    
/*
 RESET
  ↓
PC = 0x0000  //pc=program counter
  ↓
resetVec:
    goto main   
*/
resetVec:
    goto    main


    
/*
main
 ↓
GOTO main
 ↓
main
 ↓
GOTO main
 ↓
...
*/
PSECT code

main:
    goto    main
    

    
//Extra information:
    
; PIC16F877A su memoria de programa usa 14 bits de palabra, pero sus registros y ALU trabajan con 8bits: "Arquitectura Harvard/RISC"
    
; Comentario tradicional de ensamblador
    
// Comentario de una línea, estilo C/C++
    
/*
   Comentario de múltiples líneas,
   estilo C
*/

    
/*
    
 main.S
  ↓
preprocesador
  ↓
pic-as
  ↓
objeto
  ↓
linker
  ↓
.hex
 
*/
  
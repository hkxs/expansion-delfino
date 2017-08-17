*
*  Configura el GPIO12 como salida
*  y realiza un TOGGLE a te GPIO
*
		.global		_c_int00


N         .set   500
UNO       .set   001h
DIR_SP    .set   0400h
WDCR	  .set   07029h			;Direccion registro WatchDog Control
GPADIR    .set   07C0Ah
GPATOGGLE  .set   07F06h
MASK12    .set   01000h



; Máscaras  y valores
C_WDCR .set 0068h   ; Máscara de WD

		.text
_c_int00
		SETC INTM              ; Deshabilita INTERRUPCIONES mascarables
		MOV SP,#DIR_SP
		EALLOW	                 ; habilita escritura a registros protegidos
		MOVL XAR1, #WDCR
		MOV *XAR1, #0068h 	     ; Desactiva WatchDog
		MOVL XAR1, #GPADIR
		MOV *XAR1,#MASK12     ; GPIO12-13 salidas
		EDIS

* INICIO DE LEDS0
		MOVL XAR1, #GPATOGGLE
LED

		MOV *XAR1,#MASK12    ; GPIO12 ON
		B LED,UNC

		.end

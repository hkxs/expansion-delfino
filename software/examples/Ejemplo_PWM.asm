* Configura el PWM 7 con una frecuencia de 1KHz
* con un ciclo de trabajo del 25%, el reloj interno
* se configura a 50MHz y la salida se muestra en
* el GPIO12

		.global		_c_int00	;SUMA DE DATOS MODO INMEDIATO


N         .set   500
WDCR	  .set   07029h			;Direcci�n registro WatchDog Control
GPADIR    .set   07C0Ah
GPASET    .set   07F02h
GPACLEAR  .set   07F04h
GPATOGLE  .set   07F06h

DIR_CLKSRCCTL1 .set 0x0005D208
DIR_SYSPLLCTL1 .set 0x0005D20E
DIR_SYSPLLMULT .set 0x0005D214
DIR_SYSCLKDIVSEL .set 0x0005D222

DIR_GPIOGAMUX   .set 07C20h ;0x07C+0x20
DIR_GPIOAMUXH   .set 07C06h ;0x07C+0x06
DIR_PCLCLK0     .set 0x05D322 ;;CAMBIO
DIR_PCLCLK2     .set 0x05D326 ;PCLKCR2 CAMBIO
DIR_PWM7TBCTL   .set 0x04600
DIR_PWM7TBCTR   .set 0x04604
DIR_PWM7TBPRD   .set 0x04663
DIR_PWM7CMPA    .set 0x0466A
DIR_PWM7AQCTLA  .set 0x04640 ;blabal


MASK12    .set   01000h
MASK13    .set   02000h
MASK1213  .set   03000h

		.text

_c_int00

      CLRC   XF
      SETC   SXM
      SETC   OBJMODE

      EALLOW		;habilita escritura a registros protegidos
      MOVL   XAR1, #WDCR
      MOV    *XAR1, #0068h 	;desactiva WatchDog
      MOVL  XAR1, #GPADIR
      MOV    *XAR1,#MASK1213  ; GPIO12-13 salidas

      DINT

* Configuracion del reloj a 50MHz
* f_osc = 10MHz*(imult+fmult)/(divsel)

      MOVL   XAR1, #DIR_CLKSRCCTL1
      MOV *XAR1++,#0x01 ;cristal
      MOVL   XAR1, #DIR_SYSPLLMULT
      MOV *XAR1++,#0x014 ;imult=20, fmult=0
      MOVL   XAR1, #DIR_SYSCLKDIVSEL
      MOV *XAR1++,#0x02 ;div = 4

      EDIS


*   Relojes PWM
      EALLOW
      MOVL   XAR1,#DIR_PCLCLK2   ; Habilita reloj de PWM7
      MOV    *XAR1,#0x040         ; Alimenta reloj a PWM7
      EDIS

;   Configura  GPIOs
      EALLOW
      MOVL   XAR1, #DIR_GPIOGAMUX ; MUX G para EPWM7
      MOV    *XAR1,#0x00
      MOVL   XAR1, #DIR_GPIOAMUXH
      ZAPA                        ;borramos el acumulador
      MOV    AH,#0x0500           ;cargamos el valor a AH
      MOVL   *XAR1, ACC; #0x01    ;GPIO12 Y GPI13 Para EPWM7
      EDIS

      EALLOW
      MOVL   XAR1,#DIR_PCLCLK0
      MOV    ACC,*XAR1
      OR     AH,#0x04              ; habilita el PWM7
      MOVL   *XAR1,ACC             ; Habilita inicio conteo PWMs
      EDIS

*****  CONFIGURA  PWM
      MOVL   XAR1, #DIR_PWM7TBCTL  ; Conteo hacia arriba (UP)
      MOV    *XAR1,#00
      MOVL   XAR1, #DIR_PWM7TBPRD  ;  Carga contador de Perido PWM
      MOV    *XAR1,#25000          ;  f_pwm = 50MHz/(2*25000) = 1KH

      MOVL   XAR1, #DIR_PWM7CMPA   ;  valor de comparación
      ZAPA
      MOV    AH,#5000              ; ciclo de trabajo del 25%
      MOVL   *XAR1,ACC

      MOVL   XAR1, #DIR_PWM7TBCTR  ;
      MOV   *XAR1,#0x00            ;  limpia el contador

      MOVL   XAR1, #DIR_PWM7AQCTLA ;  Configura el comportamiento del GPIO
      MOV    *XAR1,#0x012

FIN_R
      NOP
      LB	 FIN_R

      .end

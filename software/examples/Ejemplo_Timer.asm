*
*         Manejo de TIMER por INTERRUPCIONES
*         Toggle LEDS GPIO12 y 13 cada segundo
*         el reloj se configura a 200MHz
*         empleando el cristal de la tarjeta
*         de evaluación (10MHz)
*
		.global		_c_int00


N         .set   500
UNO       .set   001h
DIR_SP    .set   0400h
WDCR	  .set   07029h			;Direccion registro WatchDog Control
GPADIR    .set   07C0Ah
GPASET    .set   07F02h
GPACLEAR  .set   07F04h
GPATOGLE  .set   07F06h
MASK12    .set   01000h

DIR_CLKSRCCTL1 .set 0x0005D208
DIR_SYSPLLCTL1 .set 0x0005D20E
DIR_SYSPLLMULT .set 0x0005D214
DIR_SYSCLKDIVSEL .set 0x0005D222

DIR_TIM       .set 0x0C00    ; Dir de TIM
DIR_TIMPRDL   .set 0x0C02    ; PRDL de TIMER0
DIR_TIMPRDH   .set 0x0C03    ; PRDH de TIMER0
DIR_TIM0TCR   .set 0x0C04    ; Control de TIMER0
DIR_PIECRT    .set 0X0CE0    ; Control de PIE, 01 habilita INT_PIE
DIR_PIEACK    .set 0X0CE1    ; Reconocimiento de INT_PIE
DIR_PIEIER1   .set 0X0CE2    ;

DIR_INTTIM0   .set 0x0D4C    ; Dir. del vector de TIMER0, INT1.7
DIR_PCLKCR0   .set 0x05d222  ; Reg. de Reloj periféricos

; Máscaras  y valores
C_WDCR        .set 0068h   ; Máscara de WD
PER_H         .set 0x0BEB  ; Para PRD H 5fH   TIM  1s a SYSCLK 12.5 Mhz
PER_L         .set 0xC200  ;
                           ; 100M = 5F5F100h, 25M = 17D7840h, 10M = 989680h
                           ; 2M = 1E8480, 1M = F4240h,  0.5 M = 7A120h
MASK_TIF      .set 08000h
MASK_TIE      .set 04000h  ;
MASK_TRB      .set 00020h  ; Inicializa TIMER
MASK_TIE_TRB  .set 04020h  ; Inicializa TIMER y Carga Periodo 0402h
MASK_TIMER0   .set 00008h  ; Habilita reloj de TIMER0
MASK_PIEACK1  .set 00001h  ; = bit MASK_PIE, bit 0 en PIECRT
MASK_PIE1_7   .set 00040h  ; Habilita INT_PIE1.7 DE TIMER0

		.text
_c_int00
              SETC   INTM              ; Deshabilita INTERRUPCIONES mascarables
              MOV    SP,#DIR_SP
		      EALLOW	                 ; habilita escritura a registros protegidos
		      MOVL   XAR1, #WDCR
		      MOV    *XAR1, #0068h 	     ; Desactiva WatchDog
              MOVL   XAR1, #GPADIR
		      MOV    *XAR1,#MASK12     ; GPIO12 salidas
		      MOVL   XAR1, #DIR_PCLKCR0  ; Alimenta reloj de TIMER0
		      MOV    *XAR1,#MASK_TIMER0  ;

		      ;configuracion del reloj a 200MHz
		      ;f_osc = 10MHz*(imult+fmult)/(divsel)

		      MOVL   XAR1, #DIR_CLKSRCCTL1
		      MOV *XAR1++,#0x01 ;cristal
			  MOVL   XAR1, #DIR_SYSPLLMULT
		      MOV *XAR1++,#0x014 ;imult=20, fmult=0
		      MOVL   XAR1, #DIR_SYSCLKDIVSEL
		      MOV *XAR1++,#0x00 ;div = 1

		      EDIS



* CONFIGURACION INICIAL DE PIE
              MOVL   XAR1,#DIR_PIECRT     ;
              MOV    *XAR1,#MASK_PIEACK1  ; Habilita INTs de PIE
              MOVL   XAR1,#DIR_PIEACK
              MOV    *XAR1,#MASK_PIEACK1  ; Habilita reconocimiento de INT1 PIE
              MOVL   XAR1,#DIR_PIEIER1
              MOV    *XAR1,#MASK_PIE1_7   ; habilita INT1.7, de PIE, TIMER0
*          EDIS
              OR     IER,#UNO             ; Habilita nterrupcion entrada INT1
* CONECTAR SUBRUTINA DE INTERRUPCION _SUB_TIM0 CON SU VECTOR DE INT
              EALLOW
              MOVL   XAR2,#DIR_INTTIM0
              MOV    ACC,#_SUB_TIM0
              MOVL   *XAR2,ACC
              EDIS
* Configura TIMER0
                MOVL   XAR1, #DIR_TIMPRDL
		        MOV    *XAR1++,#PER_L    ;
                MOV    *XAR1++,#PER_H    ;
                MOVL   XAR1, #DIR_TIM0TCR
                MOV     AL,*XAR1
                OR      AL,#0x4020
                MOV    *XAR1,AL      ; Carga TIMER e inicializa INT de TIMER0

* INICIO DE LEDS0
               MOVL   XAR1, #GPASET
		       MOV    *XAR1,#MASK12    ; GPIO12 ON

                CLRC   INTM             ; Habilita interrrupciones
**
ESPERA_INT      NOP
                NOP
                B     ESPERA_INT,UNC

****************************************************
_SUB_TIM0
              MOVL   XAR1, #GPATOGLE    ; Cambia estado de LEDS
              MOV    *XAR1,#MASK12    ; GPIO12

              MOVL   XAR1,#DIR_PIEACK
              MOV    *XAR1,#MASK_PIEACK1 ; Habilita reconocimiento de INT1 PIE
              IRET                       ; Retonrno de interrupcion

		.end

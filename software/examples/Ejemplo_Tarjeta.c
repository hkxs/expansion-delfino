/*
 * Ejemplo_Tarjeta.c
 *
 * Este ejemplo obtiene un canal de voz (ADC-A3)
 * y envía el valor al DAC-C.
 *
 * La tarjeta de evaluación tiene (en su versión actual)
 * dos entradas de micrófono y dos entradas de audio,
 * las cuales cuentan con filtros anti-aliasing con
 * frecuencia de corte de 4 KHz y 20 KHz (respectivamente)
 *
 * Así mismo cuenta con dos salidas de audio, las cuales
 * se encuentran preamplificadas para el uso de audífonos,
 * NO SE DEBEN CONECTAR BOCINAS a estas salidas.

 * Los canales de voz se encuentran conectados a las
 * entradas analógicas A3 y A4
 *
 * Los canales de audio se encuentran conectados a las
 * entradas analógicas B2 y B14
 *
 * Las salidas analógicas se encuentran conectadas a los
 * convertidores digital-analógicos B y C. Estos se
 * encuentran en los pines analógicos A1 y B1 (respectivamente)
 *
 * La tarjeta de evaluación emplea una fuente simétrica
 * de +-10V.
 *
 * Para hacer uso de la librería "Analog.h", se requiere tener
 * instalado ControlSuite.
 *
 *
 *
 *                      -----------------------------
 *                      |  USB                      |
 *                      |                           |
 *  ADC-AB14 (audio) -> |                           |
 *                      |J1|J3                 J4|J2|
 *                      |                           |
 *  ADC-B2 (audio)  ->  |                           |<- -VCC
 *  DACC-B1         ->  |                           |<-  GND
 *  DACB-A1         ->  |                           |<- +VCC
 *  ADC-A3 (voz)    ->  |         PROCESADOR        |
 *                      |                           |
 *                      |                           |
 *                      |                           |
 *                      |J5|J7                 J8|J6|
 *                      |                           |
 *  ADC-A4  (voz)   ->  |                           |
 *                      |                           |
 *                      -----------------------------
 *
 *
 *  Created on: 07/04/2017
 *      Author: luis
 *
 *  Probado: 07/04/2017
 *      Tester: Luis
 */


#include "F28x_Project.h"     // Device Headerfile and Examples Include File
#include "Analog.h"


/*************************************************
 * Esta función se invoca desde la rutina de     *
 * interrupción, y se encarga de procesador los  *
 * datos del ADC-A.                              *
 *                                               *
 ************************************************/
extern void ADCA_Process(void){

	Uint16 val;

    //obtiene el canal 3
	val = ADC_RESULT_PTR[ADCA]->ADCRESULT3;
    DAC_Send(DACC,val); //envía el resultado al DAC-C
}

extern void ADCB_Process(void){
	__asm(" nop");
}

int main(void){

//En caso de usar el programa en la FLASH, se copian las funciones críticas a RAM
#ifdef _FLASH
    memcpy(&RamfuncsRunStart, &RamfuncsLoadStart, (size_t)&RamfuncsLoadSize);
#endif


    InitSysCtrl();
    InitGpio();
    DINT;

    InitPieCtrl();

    IER = 0x0000;
    IFR = 0x0000;

    InitPieVectTable();

    //Configura operación del ADC-A
    ADC_Configure(ADCA,8000);

    //Configura el canal 3 del ADC-A
    ADC_Init(ADCA, 3);


    //La interrupción del ADC-A se da cuando termine el canal 3
    ADC_Int(ADCA, 3);

    //Inicia la conversión del ADC-A
    ADC_Start(ADCA);

    //Configura el DAC-C
    DAC_Configure(DACC);


    while(1);//se queda esperando por la itnerrupción

}//end main

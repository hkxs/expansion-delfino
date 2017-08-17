/*
 * Ejemplo_Analog.c
 *
 * Este programa configrua el ADC-A
 * canal 2, y el DACC (ADC-B canal 1).
 *
 * La frecuencia de muestreo del ADC-A
 * es de 8 KHz.
 *
 * La entrada del ADC se envía al DAC
 *
 *  ADCINA2 -> J7-64
 *	ADCINB1 -> DACC -> J3-24
 *
 *
 *  Created on: 20/04/2017
 *      Author: luis
 *
 *  Probado: 20/04/2017
 *      Tester: luis
 */

#define N 256

#include "F28x_Project.h"     // Device Headerfile and Examples Include File
#include "Analog.h"

extern void ADCA_Process(void){
	Uint16 val;
	val = ADC_RESULT_PTR[ADCA]->ADCRESULT2; //obtiene el valor del canal
	DAC_Send(DACC,val);
}

int main(void){


    InitSysCtrl();
    InitGpio();
    DINT;

    InitPieCtrl();

    IER = 0x0000;
    IFR = 0x0000;

    InitPieVectTable();

    //Configura operación del ADC-A
    ADC_Configure(ADCA);

    //Configura el canal 2 del ADC-A
    ADC_Init(ADCA, 2);

    //La interrupción del ADC-A se da cuando termine el canal 2
    ADC_Int(ADCA, 2);

    //Configura el DAC-C
    DAC_Configure(DACC);

    //Inicia la operación del ADC-A
    ADC_Start(ADCA);

    while(1); //todo se hace en la interrupción


}//end main


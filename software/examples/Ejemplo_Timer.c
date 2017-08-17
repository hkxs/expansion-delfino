/*
 * Ejemplo_Timer.c
 *
 * Este programa configrua el TIMER-0 con una
 * frecuencia de 100 MHz, el cual interrumpe
 * cada segundo, cambiando el estado del
 * GPIO2.
 *
 *
 * Created on: 28/04/2017
 *      Author: luis
 *
 * Probado: 28/04/2017
 *      Tester: luis
 */
#include "F28x_Project.h"     // DSP28x Headerfile


//interrumpe cada segundo
__interrupt void cpu_timer0_isr(void){
	   GpioDataRegs.GPATOGGLE.bit.GPIO2 = 1; // Toggle GPIO2

	   PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}

void main(void){

	InitSysCtrl();
	DINT;
	InitPieCtrl();

	IER = 0x0000;
	IFR = 0x0000;

	InitPieVectTable();

	EALLOW;
	PieVectTable.TIMER0_INT = &cpu_timer0_isr;  //nombre de la función de interrupción
	EDIS;

	InitCpuTimers(); //inicia los timers

	ConfigCpuTimer(&CpuTimer0, 100, 1000000); //Frecuencia de 100MHz y periodo de 1s

	/* Habilita la interrupción del timer
	 * se DEBE escribir al registro completo
	 * NO sirve si se usa CpuTimer0Regs.TCR.bit.TIE = 1
	 */
	CpuTimer0Regs.TCR.all = 0x4000;


	//Configuración GPPIO2
	EALLOW;
	GpioCtrlRegs.GPAMUX1.bit.GPIO2 = 0;
	GpioCtrlRegs.GPADIR.bit.GPIO2 =  1;
	EDIS;

	IER |= M_INT1;
	PieCtrlRegs.PIEIER1.bit.INTx7 = 1; //Configura el PIE

	EINT;   // Habilita interrupción
	ERTM;

	while(1); //Todo se hace en la interrupción
}

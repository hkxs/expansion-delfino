/*
*  Configura el GPIO12 como salida
*  y realiza un TOGGLE a te GPIO
*
 */

#include "F28x_Project.h"     // DSP28x Headerfile


int main(void) {
	
	InitSysCtrl();
	DINT;

	EALLOW;
	GpioCtrlRegs.GPAMUX1.bit.GPIO12 = 0;
	GpioCtrlRegs.GPADIR.bit.GPIO12 =  1;
	EDIS;

	while(1){
		GpioDataRegs.GPATOGGLE.bit.GPIO12 = 1; // Toggle GPIO2
	}


	return 0;
}

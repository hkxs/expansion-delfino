/*
 * Ejemplo_I2C.c
 *
 * Este ejemplo configura el puerto SPI-A
 * los pines empleados son:
 *
 * MISO: GPIO17
 * MOSI: GPIO16
 * SCLK: GPIO18
 * ~CS:  GPIO19
 *
 * El pin CS se encuentra negado. Si se
 * conectan entre si los pines MISO y
 * MOSI se realiza un "eco" de los datos
 * enviados los cuales se pueden ver en la
 * variable "data"
 *
 * La configuración del puerto es:
 *
 * Bits: 16
 * SCLK: 12.5 MHz
 * Modo: Maestro
 *
 *
 * Created on: 05/09/2017
 *      Author: luis
 *
 * Probado: 06/09/2017
 *      Tester: luis
*/

#include "F28x_Project.h"     // DSP28x Headerfile

bool flag;
Uint16 i;
Uint16 data;

interrupt void SPIisr(void){

    flag = true;
    data = SpiaRegs.SPIRXBUF;

    SpiaRegs.SPIFFRX.bit.RXFFOVFCLR=1;  // Clear Overflow flag
    SpiaRegs.SPIFFRX.bit.RXFFINTCLR=1;  // Clear Interrupt flag
    PieCtrlRegs.PIEACK.all|=0x20;       // Issue PIE ack
    __asm(" NOP");
}

void main(){



	InitSysCtrl();
	InitPieCtrl();
	DINT;
	IER = 0x0000;
	IFR = 0x0000;

	InitPieVectTable();

	InitSpiGpio();//configura los GPIO

	EALLOW;
	PieVectTable.SPIA_RX_INT = &SPIisr;
	EDIS;

	SpiaRegs.SPICCR.bit.SPISWRESET = 0; 	//desactiva el módulo SPI
	SpiaRegs.SPICCR.bit.CLKPOLARITY = 0; 	//Polaridad
	SpiaRegs.SPICCR.bit.HS_MODE = 0;  		//desactiva el modo de alta velocidad
	SpiaRegs.SPICCR.bit.SPILBK = 0;   		//deshabilita el módo LoopBack
	SpiaRegs.SPICCR.bit.SPICHAR = 0xF;		//palabra de 16 bits

	SpiaRegs.SPICTL.bit.OVERRUNINTENA = 0;
	SpiaRegs.SPICTL.bit.CLK_PHASE = 0;		//fase
	SpiaRegs.SPICTL.bit.MASTER_SLAVE = 1;	//maestro
	SpiaRegs.SPICTL.bit.TALK = 1;			//habilita la transmisión
	SpiaRegs.SPICTL.bit.SPIINTENA = 1;		//habilita la interrupción

	SpiaRegs.SPISTS.all = 0x00;
	SpiaRegs.SPIBRR.all = 0x07; 			//LSPCLK/(SPIBRR+1)=100M/(7+1)=12.5M

	SpiaRegs.SPIFFTX.bit.SPIRST = 1;
	SpiaRegs.SPIFFTX.bit.SPIFFENA = 0;
	SpiaRegs.SPIFFTX.bit.TXFFIENA = 1; 		//habilita la FIFO (Tx)
	SpiaRegs.SPIFFTX.bit.TXFFIL = 0; 		//genera la interrupcion cuando ya no hay palabras en la FIFO

	SpiaRegs.SPIFFRX.bit.RXFFIENA =1; 		//habilita la FIFO (Rx)
	SpiaRegs.SPIFFRX.bit.RXFFIL = 1; 		//genera la interrupcion cuando se recibió una palabra

	SpiaRegs.SPICCR.bit.SPISWRESET = 1; 	//habilita el SPI


	SpiaRegs.SPIFFTX.bit.TXFIFO=1;
	SpiaRegs.SPIFFRX.bit.RXFIFORESET=1;

	PieCtrlRegs.PIECTRL.bit.ENPIE = 1;  	//Habilita el bloque de PIE
	PieCtrlRegs.PIEIER6.bit.INTx1=1;   	  	//Habilita la interrupción 1 del grupo 6
	IER = 0x20;								//Habilita la interrupción 6 del CPU
	EINT;

	i = 0;
	while(1){
		SpiaRegs.SPITXBUF = i;				//dato a enviar
		while(!flag);						//espera la interrupción
		flag = false;
		i++;								//incrementa el dato a enviar
	}

}

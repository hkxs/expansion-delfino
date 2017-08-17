/*
 * Ejemplo_serial.c
 *
 * Este ejemplo recibe datos por el puerto serial-A
 * el cual se encuentra conectado al puerto USB (mismo
 * que se emplea para la programación de la tarjeta),
 * los datos son reenviados nuevamente por el puerto
 * serial realizando un "eco".
 *
 * El puerto se configura como:
 *
 * Bits = 8
 * Paridad = NO
 * Modo = Asíncrono
 * Stop = 1 bit
 *
 * Se puede emplear Putty o cualquier otro programa
 * para probar el funcionamiento, se aceptan las
 * siguientes velocidades de transferencia:
 *
 * BR9600    = 9600   Bauds
 * BR19200   = 19200  Bauds
 * BR38400   = 38400  Bauds
 * BR57600   = 57600  Bauds
 * BR115200  = 115200 Bauds
 *
 *
 * Created on: 18/04/2017
 *      Author: luis
 *
 * Probado: 18/01/2017
 *      Tester: luis
 */
#include "F28x_Project.h"     // DSP28x Headerfile
#include "Serial.h"

Uint16 Rx;

extern void Serial_Process(void){
	Rx = SciaRegs.SCIRXBUF.all; //caracter reibido
	Serial_putchar(Rx);         //reenvia el caracter recibido
}

void main(){

   InitSysCtrl();
   InitPieCtrl();

   IER = 0x0000;
   IFR = 0x0000;

   InitPieVectTable();

   Serial_Init();
   Serial_Configure(BR9600);
   Serial_Start();
   Serial_print("Ejemplo de puerto serial A:\n\r\0");

   while(1); //<- Todo se hace en la interrupción


}




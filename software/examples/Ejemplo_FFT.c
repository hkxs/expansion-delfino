/*
 * Example_FFT.c
 *
 * Este ejemplo obtiene la FFT de una señal de
 * 512 puntos (9 etapas), obtiene su magnitud
 * y su fase. Hace uso de la FPU y la TMU
 * del procesador. Se hace uso de la estructura
 * CFFT_F32_STRUCT:
 *
 * -# InPtr           Buffer de entrada/salida/intermedio (ping-pong)
 * -# OutPtr          Buffer de salida/intermedio (ping-pong)
 * -# CurrentInPtr    Buffer de salida de la CFFT
 * -# CurrentOutPtr   Buffer de la etapa N-1, almacena resultado/Magnitud/Fase
 * -# CoefPtr         Buffer con los coeficientes de Fourier
 * -# FFTSize         Tamaño de la FFT
 * -# Stages          Número de etapas
 *
 * Para el uso de arreglos de números complejos,
 * los datos deben estan alineados, en los índices
 * PARES se encuentra la parte REAL, mientras que
 * en los índices IMPARES se econtrará la parte
 * IMAGINARIA:
 *
 * CFFTBuff[2*N] <- Doble del tamaño
 *
 * CFFTBuff[0] = a[0].real
 * CFFTBuff[1] = a[0].imag
 * CFFTBuff[2] = a[1].real
 * CFFTBuff[3] = a[1].imag
 * .
 * .
 * .
 * CFFTBuff[2*N-2] = a[N].real
 * CFFTBuff[2*N-1] = a[N].imag
 *
 * La FFT implementa una filosofia "ping-pong"
 * la cual va intercambiando los buffers de
 * entrada y salida en cada etapa, es decir,
 * el buffer salida de la etapa 1 se convierte
 * en el buffer de entrada de la etapa 2, y así
 * sucesivamente, por lo que el resultado puede
 * quedar en el buffer de entrada od e salida
 * dependiendo del número de etapas empleado,
 * para un número IMPAR de etapas el resultado
 * se encuentrará en el buffer de ENTRADA, mientras
 * que para un núermo PAR de etapas el resultado
 * estará en el buffer de SALIDA.
 *
 * Al calcular la magnitud y la fase (con las funciones
 * CFFT_f32_mag_TMU0  CFFT_f32_phase_TMU0), el resultado
 * se encontrará de forma continua en el buffer correspondiente
 * a la salida, ocupando solo la mitad superior del buffer.
 *
 *
 * Mag[0]/Fase[0] = CurrentOutPtr[0]
 * Mag[1]/Fase[1] = CurrentOutPtr[1]
 * Mag[2]/Fase[2] = CurrentOutPtr[2]
 * .
 * .
 * .
 * Mag[N]/Fase[N] = CurrentOutPtr[N]
 *
 *  Created on: 22/03/2017
 *      Author: luis
 *
 *  Probado: 23/03/2017
 *      Tester: Luis
 */

#include "F28x_Project.h"     // Device Headerfile and Examples Include File
#include "fpu_cfft.h"
#include "math.h"

#define	M_PI		3.14159265358979323846	// pi

#define CFFT_STAGES     9
#define CFFT_SIZE       (1 << CFFT_STAGES)

float CFFTin1Buff[CFFT_SIZE*2]; /* Buffer para la FFT, si el número de etapas es impar el resultado queda aqui*/
float CFFToutBuff[CFFT_SIZE*2]; /* Buffer para la FFT, si el número de etapas es par el resultado queda aqui*/
float CFFTF32Coef[CFFT_SIZE];   /* Bufer para almacenar los coeficientes de Fourier*/

float CFFTresBuff[CFFT_SIZE*2]; /*Buffer para resulado*/
float CFFTmagBuff[CFFT_SIZE*2]; /*Buffer para magnitud*/
float CFFTangBuff[CFFT_SIZE*2]; /*Buffer para fase*/

CFFT_F32_STRUCT cfft; /* Objeto tipo CFFT_F32_STRUCT*/
CFFT_F32_STRUCT_Handle hnd_cfft = &cfft; /* Handle del objeto anterior*/

int main(void){

	uint16_t i,j;

	/*------------------------------------------------------*/
	/*                   Inicialización                     */
	/*------------------------------------------------------*/
    InitSysCtrl();
    ClkCfgRegs.SYSCLKDIVSEL.bit.PLLSYSCLKDIV = 0x00;

    InitGpio();

    InitPieCtrl();

    IER = 0x0000;
    IFR = 0x0000;

    InitPieVectTable();

	/*------------------------------------------------------*/
	/*                Limpa los buffers                     */
	/*------------------------------------------------------*/
    for(i=0; i < (CFFT_SIZE*2); i=i+2){

    	CFFTin1Buff[i] = 0.0f;    // Parte real
    	CFFTin1Buff[i+1] = 0.0f;  // Parte imaginiaria

    	CFFToutBuff[i] = 0.0f;    // Parte real
    	CFFToutBuff[i+1] = 0.0f;  // Parte imaginiaria
    }


	/*------------------------------------------------------*/
	/*            Señal de Prueba (impulso)                 */
	/*------------------------------------------------------*/
    j = 0;
    for(i=0; i<(CFFT_SIZE*2); i=i+2,j++){
    	CFFTin1Buff[i]   = sin(2*M_PI*440/8000*j);       // Parte real
    	CFFTin1Buff[i+1] = 0;       // Parte imaginaria
    }


	/*------------------------------------------------------*/
	/*            Prepara la estructura                     */
	/*------------------------------------------------------*/
    hnd_cfft->InPtr   = CFFTin1Buff;  // Apuntador al uffer de entrada
    hnd_cfft->OutPtr  = CFFToutBuff;  // Apuntador al Buffer de salida
    hnd_cfft->Stages  = CFFT_STAGES;  // Número de etapas de la FFT
    hnd_cfft->FFTSize = CFFT_SIZE;    // Tamaño de la FFT

    hnd_cfft->CoefPtr = CFFTF32Coef;  // Auntador a los coeficientes de Fourier
    CFFT_f32_sincostable(hnd_cfft);   // Calcula los factores de Fourier


	/*------------------------------------------------------*/
	/*                Calculo de la FFT                     */
	/*------------------------------------------------------*/
    CFFT_f32u(hnd_cfft);
    // Mueve el resultado a nuestro buffer
    for(i=0;i<(CFFT_SIZE*2);i++){
    	CFFTresBuff[i] = hnd_cfft->CurrentInPtr[i]; // El resultado esta aqui por ser número impar de etapas
    }

	/*------------------------------------------------------*/
	/*           Calculo de la Magnitud                     */
	/*------------------------------------------------------*/
    CFFT_f32_mag_TMU0(hnd_cfft); // Calcula la magnitud (guarda el resultado en OutPtr)
    //Movemos el resultado a nuestro buffer
    for(i=0;i<CFFT_SIZE;i++){
    	CFFTmagBuff[i] = hnd_cfft->CurrentOutPtr[i];
    }


	/*------------------------------------------------------*/
	/*               Calculo de la Fase                     */
	/*------------------------------------------------------*/
    CFFT_f32_phase_TMU0(hnd_cfft); //Calcula la fase (guarda el resultado en OutPtr)
    //Movemos el resultado a nuestro buffer
    for(i=0;i<CFFT_SIZE;i++){
    	CFFTangBuff[i] = hnd_cfft->CurrentOutPtr[i];
    }

    while(1); //terminamos

}//end main



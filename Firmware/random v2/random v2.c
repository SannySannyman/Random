/*
 * random_v2.c
 *
 * Created: 20.02.2017
 *  Author: Oleksandr
 *	
 *
 */ 

#define F_CPU 1200000UL

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <util/delay.h>
#include "bits.h"

#define FALSE	0
#define TRUE	1

#define BUTTON_PIN			PINB1
#define TRUE_LED			PORTB3
#define FALSE_LED			PORTB4
#define DEBUG_PORT			PORTB0

#define BTN_DELAY	50u


typedef enum 
{
	STATE_SLEEP,
	STATE_WAKEUP,
	STATE_WAIT,
	STATE_DISPLAY_RES

}state_t;

volatile state_t state = STATE_SLEEP;



ISR(INT0_vect)						/*button interrupt*/
{
	asm("nop");
}



int main(void)
{
	//**************************_IO_INIT_*************************//
	set_bit3(DDRB, TRUE_LED, FALSE_LED, DEBUG_PORT);				/*out led`s port*/
	set_bit(PORTB, BUTTON_PIN);										/*pull up*/
		
	//**************************_INTERRUPT_INIT_*************************//
	set_bit(GIMSK, INT0);								/*on interrupt INT0*/
	unset_bit2(MCUCR, ISC01, ISC00);					/*low level interrupt*/
	
	sei();	

    while(1)
    {
		switch(state)
		{
			case STATE_WAKEUP:
				set_bit(TCCR0B, CS00);					/*start timer*/
				set_bit(MCUCR, ISC00);					/*logical change interrupt*/
				set_bit2(PORTB, TRUE_LED, FALSE_LED);	/*on both led`s, test*/
				state = STATE_WAIT;
				break;

			case STATE_WAIT:
				if (check_bit(PINB, BUTTON_PIN))		/*if button unpressed*/
				{
					_delay_ms(BTN_DELAY);
					if (check_bit(PINB, BUTTON_PIN))	/*check if button unpressed again, debounce*/
					{
						state = STATE_DISPLAY_RES;
					}
				}
				break;
				
			case STATE_DISPLAY_RES:
				unset_bit3(TCCR0B,CS02, CS01, CS00);		/*stop timer*/ 
				unset_bit2(PORTB, TRUE_LED, FALSE_LED);		/*off led`s*/

				if ((TCNT0 & 0x01) == 0)					/*check timer`s LSB*/
				{
					set_bit(PORTB, FALSE_LED);
				}
				else
				{
					set_bit(PORTB, TRUE_LED);
				}
				_delay_ms(1000);

				unset_bit2(PORTB, TRUE_LED, FALSE_LED);		/*off led`s*/
				state = STATE_SLEEP;
				break;

			case STATE_SLEEP:
				TCNT0 = 0;								/*reset timer reg*/
				state = STATE_WAKEUP;
				unset_bit2(MCUCR, ISC01, ISC00);		/*low level interrupt*/
				sei();

				set_sleep_mode(SLEEP_MODE_PWR_DOWN);
				sleep_mode();
				break;

			default:
				break;
		}/*switch*/
    }/*while*/
}/*main*/
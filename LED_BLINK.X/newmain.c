/*
 * File:   newmain.c
 * Author: Success
 *
 * Created on 19 December, 2025, 10:05 AM
 */
#include <xc.h>

// turn off WDT
#pragma config WDTE = OFF

void init_config(void) {
    // configure PORTB as output
    TRISB = 0x00;
}

void main(void) {
    init_config();
    while (1) {
        // turn ON the LEDs (1111 1111)
        PORTB = 0xFF;
        // delay
        for (unsigned int wait = 50000; wait > 0; wait--);
        // turn OFF the LEDs (0000 0000)
        PORTB = 0x00;
        // delay
        for (unsigned int wait = 50000; wait > 0; wait--);
    }
}

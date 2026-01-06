/*
 * File:   main.c
 */

#include <xc.h>
#include "clcd.h"

#pragma config WDTE = OFF        // Watchdog Timer Enable bit (WDT disabled)

static void init_config(void) {
    init_clcd();
}

void main(void) {
    init_config();

    while (1) {
        // 4 + '0' -> '4'
        clcd_putch(5 + '0', LINE1(4)); // ASCII Conversion 5+'0' = '5'
        clcd_print("SK The", LINE2(2));
        clcd_print("Change Maker", LINE3(2));
        clcd_putch(4 + '0', LINE4(8));
    }
    return;
}

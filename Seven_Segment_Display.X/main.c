#include <xc.h>

// CONFIGURATION BITS
#pragma config FOSC = HS
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = OFF
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#define _XTAL_FREQ 20000000

// COMMON ANODE 7-segment codes
// a b c d e f g dp
const unsigned char seg_code[10] = {
   /* ~0xC0, // 0
    ~0xF9, // 1
    ~0xA4, // 2
    ~0xB0, // 3
    ~0x99, // 4
    ~0x92, // 5
    ~0x82, // 6
    ~0xF8, // 7
    ~0x80, // 8
    ~0x90  // 9*/
     0x3F, // 0
    0x06, // 1
    0x5B, // 2
    0x4F, // 3
    0x66, // 4
    0x6D, // 5
    0x7D, // 6
    0x07, // 7
    0x7F, // 8
    0x6F  // 9
};

void main(void)
{
    unsigned char i;

    ADCON1 = 0x06;   // Make PORTA digital
    TRISA = 0x00;    // PORTA output
    TRISD = 0x00;    // PORTD output

    PORTA = 0xFF;    // All displays OFF
    PORTD = 0xFF;    // All segments OFF

    while(1)
    {
        for(i = 0; i <= 9; i++)
        {
            PORTA = 0xFF;          // Disable all displays
            PORTD = seg_code[i];  // Load digit pattern

            RA0 = 0;              // ENABLE DISPLAY 1 (ACTIVE LOW)
            __delay_ms(500);

            RA0 = 1;              // Disable display
            __delay_ms(200);
        }
    }
}
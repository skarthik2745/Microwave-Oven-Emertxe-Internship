
#include<xc.h>
#pragma config WDTE= OFF
void init_config()
{
    // Configure switch pin RB0 input and LED pin RD0 output

    // configure RD0 as output
    TRISD0 = 0;

    // configure RB0 as input
    TRISB0 = 1;
}

void main(void)
{
    init_config();

    while (1)
    {
        // detect the switch press
        if (RB0 == 0)
        {
            RD0 =!RD0;
            for (unsigned int wait = 50000; wait>0; wait-- );
        }

        // toggle the LED
    }
}
/*
 * File:   main.c
 */

#include <xc.h>
#include "clcd.h"
#include "matrix_keypad.h"
#include "micro_oven.h"
#include "timers.h"

extern unsigned char minn,sec;

#pragma config WDTE = OFF        // Watchdog Timer Enable bit (WDT disabled)

unsigned char screen_flag= POWER_SCREEN;

static void init_config(void) {
    init_clcd();
    init_matrix_keypad();
    init_timer2();
    PEIE=1;
    GIE=1;
    //configure fan pin
    FAN_DDR=0; //fan pin as output pin
    BUZ_DDR=0;
    
    }

void main(void) {
    init_config();
    
    unsigned char key;
    unsigned char reset_flag;
    
    while (1) {
        // update screen flag based on key press 
        key=read_matrix_keypad(STATE); // 1 2 3 4 5 6 7 8 9 0 * # which key is pressed
        if(screen_flag==MENU_SCREEN)
        {
            if(key==1)
            {
                screen_flag=MICRO_MODE;
                clear_screen();
                clcd_print("Power = 900W", LINE2(2));
                __delay_ms(1200);
                clear_screen();
                reset_flag=RESET_FLAG;
                
            }
            else if(key==2){
                screen_flag=GRILL_MODE;
                reset_flag=RESET_FLAG;
                clear_screen();
            }
            else if(key==3)
            {
                screen_flag=CONVECTION_MODE;
                reset_flag=RESET_FLAG;
                clear_screen();
            }
            else if(key==4)
            {
                screen_flag=START_MODE;
                clear_screen();
            }
        }        
        else if(screen_flag==DISPLAY_TIME)
        { 
            if(key==4)
            {
                sec=sec+30;
                if(sec>59)
                {
                    minn++;
                    sec=sec-60;
                }
            }
            if(key==5)
            {
                screen_flag=PAUSE;
            }
            else if(key==6)
            {
                screen_flag=STOP;
                
            }
            
        }
        else if(screen_flag== PAUSE)
        {
            if(key==4)
            {
                // Start cooking process 
                TMR2ON=1;
                FAN=1;
                screen_flag=DISPLAY_TIME;
            }
            
        }
        
        switch(screen_flag){
        // Implement power on screen  
            case POWER_SCREEN:
                display_power_screen();
                clear_screen();
                screen_flag= MENU_SCREEN;
                break;
        // display modes screen
            case MENU_SCREEN:
                display_modes();
                break;
            case MICRO_MODE:
               
                set_time(key,reset_flag); // for initialization we use flag , we will not allow to initialize after one time
                break;
            case DISPLAY_TIME:
                display_time();
                break;
            case GRILL_MODE:
                
                set_time(key,reset_flag);
                break;  
            case CONVECTION_MODE:
                //set temperature
                set_temp(key,reset_flag);
                //set time
                //display time
                break;
            case START_MODE:
                heat_food();
                break;                
            case PAUSE:
                TMR2ON=0;
                FAN=0;
                break;
            case STOP:
                TMR2ON=0;
                FAN=0;
                clear_screen();
                screen_flag= MENU_SCREEN;
                break;
                
        
// select mode
// set the time
// display time start point and stop
// set the temperature
        
        }
        reset_flag=RESET_NOTHING;
        
        
    }
    return;
}

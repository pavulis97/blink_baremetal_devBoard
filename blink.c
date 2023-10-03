/***************************************************************************//**
 * @file
 * @brief Blink examples functions
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/

#include "sl_simple_led.h"
#include "sl_simple_led_instances.h"
#include "sl_sleeptimer.h"
#include "sl_simple_button_instances.h"

/*******************************************************************************
 *******************************   DEFINES   ***********************************
 ******************************************************************************/

#ifndef LED_INSTANCE0
#define LED_INSTANCE0    sl_led_led0
#endif

#ifndef LED_INSTANCE1
#define LED_INSTANCE1    sl_led_led1
#endif

#ifndef BTN_INSTANCE0
#define BTN_INSTANCE0    sl_button_btn0
#endif

#ifndef BTN_INSTANCE1
#define BTN_INSTANCE1    sl_button_btn1
#endif

/*******************************************************************************
 ***************************  LOCAL VARIABLES   ********************************
 ******************************************************************************/

sl_sleeptimer_timer_handle_t timer_led0;
sl_sleeptimer_timer_handle_t timer_led1;

bool toggle_timeout_led0 = false;
bool toggle_timeout_led1 = false;

uint32_t toggle_delay_ms_led0 = 500;
uint32_t toggle_delay_ms_led1 = 500;

//commit1
//commit2
//commit3

/*******************************************************************************
 *********************   LOCAL FUNCTION PROTOTYPES   ***************************
 ******************************************************************************/

static void on_timeout_led0(sl_sleeptimer_timer_handle_t *handle,
                       void *data);
static void on_timeout_led1(sl_sleeptimer_timer_handle_t *handle,
                       void *data);
static void on_timeout_led(sl_sleeptimer_timer_handle_t *handle, 
                      void *data);

                      
void stop_timer(sl_sleeptimer_timer_handle_t  *handle);
void start_timer(sl_sleeptimer_timer_handle_t  *handle, uint32_t led_toggle_delay, sl_sleeptimer_timer_callback_t callback);
/*******************************************************************************
 **************************   GLOBAL FUNCTIONS   *******************************
 ******************************************************************************/

/***************************************************************************//**
 * Initialize blink example.
 ******************************************************************************/
void blink_init(void)
{
  // Create timer for waking up the system periodically.
  start_timer(&timer_led0, toggle_delay_ms_led0, on_timeout_led0);
  start_timer(&timer_led1, toggle_delay_ms_led1, on_timeout_led1);

}

/***************************************************************************//**
 * Blink ticking function.
 ******************************************************************************/
void blink_process_action(void)
{
  if (toggle_timeout_led0 == true) {
    sl_led_toggle(&LED_INSTANCE0);
    toggle_timeout_led0 = false;
  }
  
  if (toggle_timeout_led1 == true)
  {
    sl_led_toggle(&LED_INSTANCE1);
    toggle_timeout_led1 = false;
  }
  
}

/***************************************************************************//**
 * Sleeptimer timeout callback.
 ******************************************************************************/
static void on_timeout_led0(sl_sleeptimer_timer_handle_t *handle,
                       void *data)
{
  (void)&handle;
  (void)&data;
  toggle_timeout_led0 = true;
}

static void on_timeout_led1(sl_sleeptimer_timer_handle_t *handle,
                       void *data)
{
  (void)&handle;
  (void)&data;
  toggle_timeout_led1 = true;
}

void sl_button_on_change(const sl_button_t *handle)
{
  if (sl_button_get_state(handle) == SL_SIMPLE_BUTTON_PRESSED) {
    if (&BTN_INSTANCE0 == handle) {
      stop_timer(&timer_led0);
      toggle_delay_ms_led0 = toggle_delay_ms_led0 * 0.5;
      start_timer(&timer_led0, toggle_delay_ms_led0, on_timeout_led0);
    }
  }
}

void start_timer(sl_sleeptimer_timer_handle_t  *handle, uint32_t led_toggle_delay, sl_sleeptimer_timer_callback_t callback)
{
  sl_sleeptimer_start_periodic_timer_ms(handle,
                                        led_toggle_delay,
                                        callback, NULL,
                                        0,
                                        SL_SLEEPTIMER_NO_HIGH_PRECISION_HF_CLOCKS_REQUIRED_FLAG);
}

void stop_timer(sl_sleeptimer_timer_handle_t  *handle)
{
  sl_status_t stop_status = sl_sleeptimer_stop_timer(handle);

  if (stop_status != SL_STATUS_OK) {

  }
}
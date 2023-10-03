/***************************************************************************//**
 * @file main.c
 * @brief main() function.
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
#include "sl_component_catalog.h"
#include "sl_system_init.h"
#include "app.h"
#if defined(SL_CATALOG_POWER_MANAGER_PRESENT)
#include "sl_power_manager.h"
#endif
#if defined(SL_CATALOG_KERNEL_PRESENT)
#include "sl_system_kernel.h"
#else // SL_CATALOG_KERNEL_PRESENT
#include "sl_system_process_action.h"
#endif // SL_CATALOG_KERNEL_PRESENT


#define EM_EVENT_MASK_ALL      (  SL_POWER_MANAGER_EVENT_TRANSITION_ENTERING_EM0 \
                                | SL_POWER_MANAGER_EVENT_TRANSITION_LEAVING_EM0  \
                                | SL_POWER_MANAGER_EVENT_TRANSITION_ENTERING_EM1 \
                                | SL_POWER_MANAGER_EVENT_TRANSITION_LEAVING_EM1  \
                                | SL_POWER_MANAGER_EVENT_TRANSITION_ENTERING_EM2 \
                                | SL_POWER_MANAGER_EVENT_TRANSITION_LEAVING_EM2  \
                                | SL_POWER_MANAGER_EVENT_TRANSITION_ENTERING_EM3 \
                                | SL_POWER_MANAGER_EVENT_TRANSITION_LEAVING_EM3)



void my_callback(sl_power_manager_em_t from,
                 sl_power_manager_em_t to);

sl_power_manager_em_transition_event_handle_t event_handle;
sl_power_manager_em_transition_event_info_t event_info = {
  .event_mask = EM_EVENT_MASK_ALL,
  .on_event = my_callback,
};

void my_callback(sl_power_manager_em_t from, 
                 sl_power_manager_em_t to)
{
  sl_power_manager_em_t transitioning_to = to;
}


int main(void)
{
  // Initialize Silicon Labs device, system, service(s) and protocol stack(s).
  // Note that if the kernel is present, processing task(s) will be created by
  // this call.
  sl_system_init();
  sl_power_manager_subscribe_em_transition_event(&event_handle, &event_info);
  // Initialize the application. For example, create periodic timer(s) or
  // task(s) if the kernel is present.
  app_init();

#if defined(SL_CATALOG_KERNEL_PRESENT)
  // Start the kernel. Task(s) created in app_init() will start running.
  sl_system_kernel_start();
#else // SL_CATALOG_KERNEL_PRESENT
  while (1) {
    // Do not remove this call: Silicon Labs components process action routine
    // must be called from the super loop.
    sl_system_process_action();

    // Application process.
    app_process_action();

#if defined(SL_CATALOG_POWER_MANAGER_PRESENT)
    // Let the CPU go to sleep if the system allows it.
    sl_power_manager_sleep();
#endif
  }
#endif // SL_CATALOG_KERNEL_PRESENT
}

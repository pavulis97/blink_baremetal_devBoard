####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 15                                              #
####################################################################

BASE_SDK_PATH = /Users/pmaksimkin/SimplicityStudio/SDKs/gecko_sdk_3
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.3.1

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32ZG23B020F512IM48=1' \
 '-DSL_BOARD_NAME="BRD4210A"' \
 '-DSL_BOARD_REV="A01"' \
 '-DHARDWARE_BOARD_DEFAULT_RF_BAND_868=1' \
 '-DHARDWARE_BOARD_SUPPORTS_2_RF_BANDS=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_868=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_915=1' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1'

ASM_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32ZG23B020F512IM48=1' \
 '-DSL_BOARD_NAME="BRD4210A"' \
 '-DSL_BOARD_REV="A01"' \
 '-DHARDWARE_BOARD_DEFAULT_RF_BAND_868=1' \
 '-DHARDWARE_BOARD_SUPPORTS_2_RF_BANDS=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_868=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_915=1' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1'

INCLUDES += \
 -Iconfig \
 -Iautogen \
 -I. \
 -I$(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32ZG23/Include \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/hardware/board/inc \
 -I$(COPIED_SDK_PATH)/platform/driver/button/inc \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(COPIED_SDK_PATH)/hardware/driver/configuration_over_swo/inc \
 -I$(COPIED_SDK_PATH)/platform/driver/debug/inc \
 -I$(COPIED_SDK_PATH)/platform/service/device_init/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/common/inc \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/gpiointerrupt/inc \
 -I$(COPIED_SDK_PATH)/platform/service/hfxo_manager/inc \
 -I$(COPIED_SDK_PATH)/platform/driver/leddrv/inc \
 -I$(COPIED_SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart \
 -I$(COPIED_SDK_PATH)/platform/peripheral/inc \
 -I$(COPIED_SDK_PATH)/platform/service/power_manager/inc \
 -I$(COPIED_SDK_PATH)/platform/common/toolchain/inc \
 -I$(COPIED_SDK_PATH)/platform/service/system/inc \
 -I$(COPIED_SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(COPIED_SDK_PATH)/platform/service/udelay/inc

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 --specs=nano.specs \
 -g

CXX_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c++11 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 --specs=nano.specs \
 -g

ASM_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--gc-sections


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA
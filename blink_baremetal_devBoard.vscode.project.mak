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
# SIMPLICITY_STUDIO_METADATA=eJztXQlz3LiV/iuurtRWslGfsufQ2jNlW3JWKXukUkuZzUYpFppEdzPitTwkeab83xcgwQMkSAIkQFJbm8OSSOC97z3cIPC932fXN1d/vfh4q91cXd3Ozma/389uLj6/v73824VWfHU/O7uf3c++zU6yHNuru5uPF1uU6e3Pz7b16hH6gek67+5n68XqfvYKOrprmM4BPbi7/TT/4X7280/3zlvPd/8F9fAV+ulBP/y61dFPlIY8v5+hRK9evd27lgH9Vw6w8UvddfbmgbzDb00Lpu8CS7Oh7fpftSTV4oiUR76JXuFkZ8u7ACFbejZ4CEz7wXSWW9P2LFM3kfIwMkx3+fhGe3L9h8ADOlzuLNN50HbAhzYMgaUZ8PGDC3xjmYhfsvQta4B57hP0NRs44IB+DoavTm0dTPt580bbWyA4asExCg33ydGiAPjhgC7lgFAHP8DKobaLwtB1tF3orIbD3aibG/B6RMBrDsBIjqlDzXTMUDN0Qx8OboNmHrDW/tkdB2xJc0tVsKCB/z98xWUo5oM6fJVlKK6DesTOH7zbrdFaB3KHs+N0oe9aw6GsU8vTnKAdjdOaaMX1UHfRQQueBm3yVZU8njyO1jEdhTomMk6MNDy1wIS2Ze5QIh+SchgGZoPaWm9aEHqhaQ/ZHTF1JgDfLpP5NWuuDaLQPUCndrKd9B8G3IPICuMqtdAV2UKgLGu1Mt19c3uhfXRtz3WgEwbKHJ2Cq6qrqwR6mkrTARLlqqsEBccxlfL0ULrl6g/BEGXL1lqHET5iY47AMSzoD+HBikI+ZAM4rqKQbx06IMJaxXzDjukEIXB0OEg1bFAtinaAWtmgmmMCP4ZjK3qFcA7n0opeJk4sD/r4ycIyFGMr6WLiWeh+tjhGvypGVNHWPq84QP3B1QLjQXu9OF2sC/MLKplngXDv+nb2vpLiPB4uCu8rKbYmMs11PoNdQCWrJLz4dHO6+e+/bE5LyaoS3cgv6UzTFevu1yCEtgb3/unmt8PmVFnjKvlymTptmfhmWXDAMrNxmRixZKFcthgWAj+MvMlbxoJZNo2qo7UFfunoVmS0lnimabfarPZv1hvTfv2Dsr6qm3OIKctarC2Fn+XTgG57UzcuA8lvlcLRRZpR9EjUatMu8oE9easylCJ2hfpLsCtByW2XbkeTt4pg5LYJb9dP3qgUJL9VSL6zd6dvWI6T3zYboHyB7pte6KpbW0szsQKX31LPsqZvHwHJbRV8Ab0IFOxFYPwVePpmZTC5LdsHvj79fiRDyW3XwUMrwsnblaEUsMucfnGlIIWs0jz3BTQxCim3fcf9S2hlGUoBu55fglnPYlaZm+n3HAQjv03gBcyDU5D8VulAP8Lp25XB5LbsAX4NdOBM3rQCTm7bLN2YvF0Eo4hN/v4lWJWg5LcLrW+mbxYBKWTVMwL0IixLgQpbh08qmM4L2FhkAea3FgbQCaY/CBRwCtgWH515AbZlOPltexFzYkt4Tmy9hDmxJTontoFp7dznyRtWwMlvmweOu5fwqaIIlN+6YPoTf4KR2yZPd6a/VZCC5Ldqbz973guYRhaB8lvnT38iQjCK2KQF5sEB1ouwrYiV28ZA90GoHz0w/UUbDZXfQvhSRjcKKb99L+CLTCD4RSb4Guh7dWeXpZmVwRSx7CUcL8hhclv2MtYy4iuZ6GUsZSLxtczL+Owp/tXz0QDTb2EpSG6rngyFtzlkWZWCbLPKJjcypmpQEV/bwdXyWddpmsSCyXVulfGw8qj6oEyuYNuu03Se2nT0yjlq+sg+CF3bHKFdJ9iXCOCSQrFsRAudaIQdBxpriqEZKQgQqhGGgZJfMxTNaJNcY6PNUTSjDSwzGN21GYgWrCEIoxEWuiWwGYplU4dT6T8Cv7X/SGrY4LcKiH0I4JJCwVNzRgabgRAri9B1Lf0ITKf5Zky1yOpod0bzQ2ZJ6pEcz7JtkOQY4mpphnx4MEfs5XKzSauswKrMHNjlNjEDeJAfdF3zfGgm06bpWFDF1VoDhadphm8+Qr9pmpbcBe3frhM5w7frxMJloj5t1DmYtsoRFG/ETgR9BZOanonIH7w90DaTxpCDESuxaaCvYBJvydWmi1lC+rfLjGtmtModI0jrNgVHTb3OVYxVORKLSd2g4EioFxY0DP+xf8VAckarEokNaZ0gSDgb/nRw04DUVGYsfKxqTKwl9ZggESilaeCmAcmfYn38sr3cNs2wPrp++Uo4571xyre6HZhBzMxjquSwqXVubOcSG5PtQFYhNdaOJDmhfJ2QAQVEjfjD32IGPPg8wgYQAzwNh8PzaMExCeAUmmbcmC5Nt09H2IJn4S6iacRte5EGfPtxBFYHBm4KjfwOEFnUxq1i5GRdzT0h3/yuwvw1uJeJzcsClny+x4LXNmwWc41zB57TpLq77y0MoJO1p+ZqcRsN52Ttqbs910Z4PFmD6o4+NxnkPI7xXZHToBSc+IKBb71f4r4ONsMvl1ieyDYAmPgEu5MpW5XDE+1UpmxVAZ9o1zJls6xuZsVteKo2peAkbDYV2cn7bzkVpY3nvSKK1H1lZG11gWJtPyL1Y1bxNoMKAFvsMul8Jlpd+g4YgfSmwbQGjGq24Ki6MQ1PkFlFGZlQ6U7KlCo0CZ0XxSPcv/eixI3X2ikYaXOvYGvrwGiO5fgbxZRNyhGKGTZ218xhmUDnTGf0fPMRhCMcaGgyrgGkmt6ZrvkT8QXpnyvYurTKCZuUIxSrutOyiQFOwuCTnM7uP+qQU95KQ2a0ui0BkX33pCG1fhFMknu+q8Mg0IAemmMctWm0pQpOTW9VdN1ojYB4IP0+SkPqVprTsqUKTkaDziLjSGjUmawR20GGIT8cXETVWhHySEHxFCa5XzhJc0oABS1LiJmna1iGT9CuCdc/Gl/r5ILOOGJnVDaJBU3RwJK33SmYn11UKaISKMcJGVGGJWEoiQxoga/9h5FEznhNONGfNt8cTVtHlKSMzyR8Z8cHQbZTMqEETE2DJd4arZ4Tw0lDzdHIPx8C7fJ51fa7pOIuhbo7xuWO2LjijbcMh4R+ApMXx/vbfuS1HJxp7S4oWcN3GYmfKBBxo6vAUtDaaB0jVRHadFxTKrBUND3L3DU1vZZLlmgtNdLsN0Ye15AihoYbligZjjUyLlCCoAWm68OxcRIIzUDh6P6EPP6M2evHxZlCaAaKWfPGxUkQNMPEpGrjwiQImmEmez0jI81BNIMdaa1NYa1ZT5ehJuw840LNMIhdU2+hHMlGkhGmANi4eHpo1wX6qgwTR3OEuHkU0hRC+7A7Mk7WGV4GzPiqChhlCkijLQBpJI0wtfH9S6No9vFYzDOUf7mIZ+J2OMLFgVJPwLgbUJ0ujsOPQ9dZHnoclM4H9j5yxu5hCyia4Y52F42CW3v/jLlyGLsi+KzdDQZQ7QAd6I9xDr8CuAilfckzLl7mfRTmkmdcnOyYYawlz7g4mVTlDJjTmBvQQNrXaeOiZdJvM9ZpozD/UkjreH1rFpWjgyUgeMBOpJ+tguFZEY+Lue6bHnNFPC5UJmeu8H6wh8rGO0IfWD02hXMhox36yCHEOwZMRFK3DqoaBq8OBZtxnWAiEqkc5T9LF38QlidAEVeUicMw3B7VCJM+YRHDHm1M7VrGujO+MApIM49jkhYzL/iuNezmcxP4MiCp1b+sZbDaX7I4JQsrY+EpsUHPXDbhZp20VEDsh9yzNw+RD/AZSM1FqTEJVf9DJ7o73OeBzI2E2YdtU9oQCDI15zWw8MFrT7PZGXUxaxbe5byB/bx5o+0tEBy14BiFhvvUiRiydGxWY4hN5jOVvFW3M/KOVvsYWDIW2ToTa14yT0lxcrVzVl/VpTBWY2CVQsoJK1oKrEOJkhjzqT/pP4rOBZ6nrD4T2cuqVhuY6ppRKpyhN86jTHEmnaEZ+0JVjSWya+1VpTeTztDsQ2DYcGEbinQX5BPt1CCVwjiHexBZqIt5ZYEdtKgn8WzoY7zZZe5MCyHAHvON16vVGpytFvi/71frV/jRZr0ij1BGD7Xocj5bjxbAtxdxNIxFHA4jC4yxW21W+zfrjWm//gFlz4iYyzJ0114EJgIaLIJggZMtTAPGYrM8i4MTLXQjPFuvcO+02KwQtB82r5Fc1GU1STQeFkEIdPRvhNZuZ3HnttA26x+xvd9/l/XCbw0Y6Ghth93409tl8a+kK6EcjZ69XXq++y+oh+j32clse/nl+vPlx8vbv2vb27vzyyvty9X53eeL7exs9o/fcc2w0QwCldvZHlgBPMEU0KYVms7Fc0wXFqA3//hn/njrRr6eP7VdI7LQsvDsfvaW6D378iV++OrZtpzgjDx9d3+PlpFh6J0tl09PT6kfkEuWQbC8ThItIN6fxylfEXVxttCPkoemEf8d6YtE7yKAYeQtPsafo4iMazcIP6DMxqKuti4Ouh6L8wybkv/TfezSmIIbf4IJUN0KMZ9AnGrx7/jfJU6U+Ti19af7We4i5A0s8dvJ/xH3vlzHpssewhBv6UYyAdCSx7izZPs+yxjvuiVfjRLm3jznSVE6vequSZRx/9YnKLEhcaSD8fmB1mQxoQJHOqshHcW0UZOmxs3lNDjaQN3bumlbXQb6EnJNoqDIya3tQmfFnXLNl7I5kQUN/P82rSRZvcr8AhFdhyfRU0T6xwTUi+kh6po/iEL3AJ3lze2Fhodx14FOGJDiSF9iI6GPZ1ILy6DeZD2Ckcxvss1EOo2eStZ0gNzkHkoK2PyRFTHwEYs4AsewkiN9Ta8rGsr8EzVS6MpuOmj24iB38SesKC5U+XZxdKppVfpbaON9efhyqv39rHVdHffj8VK62KUXuvjAM0mZCsjKsotlxfsqVrBan+6+N46r0wIKwww8cldJTFyDVbqorNyq7lkzS9gisg8/tmmgBhpLO+AvgoZtLElW/HszkGYpdl2p1GbDX02/enmDZHalyb7DSbbqPims/E8Kq+ImxzVv+AvmTLfc27M1flMRzF4YAqTs8HaXQ2+QizXg/+8MJtAZKN4E7aixx+Z3U5/DFWmgkwDCOd8pb+GUpmj+Im+8YF6Ku10wLx0goCnzuVhMYKDbnmyRsK6L6ypxh3pBW77MsLUGCcokB+slSkwp2mWKRMmdvStbqg20dH/TbW3VosI9q26q0FUklF5UMDvXJVHoPiBx4yXKPHi6L7tSpUeIJYtE61vpLj3u5bs0ZeqXKNLcyC4jE0jvS0wd6EcoWegD/BrooHV0FpRaP1PtIdHfy5aJ+lEFIp93QHafnIrFu2SmI33It2AAnUB21bJgdk5YplQFPYolv0exgWnt3GfZUj1w3MmfnpG7HhIlerojeyjx9vaz50nvBMhdDLkStcA8OMCSLRnN+ECoHz0gu3cNoJr6Gkif+OUXUuQKlb8+UdH5RSp6PxVT6UcDyPbnk+FKLvfi+RY5km3yFUqKNHIzKIPbS2iy0bwMQlTWkVcQ2rKnxCW0DLRFZoH1K7AK184F8oSubbZWMDpPfhWbPw90otaxls4RWGYgaAwqkzBqHSpIHrJ1SJzG5+iMJhRD48uSndtKQR50HQ1s0EzqJifYipTkPEO/3JoPDxz7iRUh+bYxhtDihpZY68JZqU+9YhLSTyNZVHvhrLRyPgn1obi5M7Mil3NkZkZPFs6XfwwXy06H1hbOV1Dbkr2eALE9FwcnnqgQJqdgsxAmdQh3Fq4tYRbrB3f6lIWHP0P7bLWBkIY/G9dAxGSPEMpQvFPMnZFjq5ZJZ8CdgWOt2XCznzsbx7KujvqEOw/fWqTmirpglk6FybUEYV+X5s7B+XmvjhepPU+Zy5I7ByGV5E9PyB25M0BBBQ3HIdgZCO0gd3rC/8edPmfh486SkeFx58g46ZpyTPasTlM+npvlnPlrb+M35eeMm5sH05YgjOcbqVgEaQmSeL4ICUZNliAqjVcsKqo54K8EaXmgXQnCCvFtJUizpEpLA7ryiOKJE9lRTjVIo7CgmnCrMuQUAul1FNcQWZRHIl8IODmS8shrXeUxop6Ji6qLPilHUh70UZI8sRoiGN6QR2RbhJROMsoBSgSFMIM/9ZVBByaSIk1sLsEfXaiTNFZgHy5BTaHXOguoxjsTEMUO6tdZQDWSHo+oumgkAnkrUWi65i2FfznJr8ufUPeqJ3MfJbtUtI3/fDF3UiZ+C5bc5EJORTkOwUv3a37HaqH72UVTHTO4TMblkZ7mH9vZ/2TepL8+/4Kv0b/9GXnk/v4V2TN6dz9bY2IC9AQ6umug2oIe3d1+mv9wP/sZ6URKiU6UJI0BJuFKO9aIBKMFd/h1q6OfmKmOKJrFelEC9L+3HpKHDTS2IfR+Qh6g/r6/p0gEsCNVWCjRtqU6lHw3Wrk9n/C+5OqSZkelSVOaqPndF0l3ypem0dt49xRNOFHzSWo+fhjfSsVP4j4h9U6z8Lor1DJ18Nzrlqmv8ca3UkVrRYoa6AFUqSnRAShwG+NivDotqkqmhhlBpoo6hglVJU/zSsjVUqXBUGXFUXn9rbA/SNPRwD0i1Q4WpUQXBTmtWf6InKy5BuER/ZlQTwUxs9RZOsVYpoPgcqipB++N/c7DOplac43rbJ4IlCSbKeferxZJawFXCSykia4jsJCpgE1/IVNDhR1DnXDJyGuJO2QqaaD9GEKN5PKooxxRrkOmHSXamS5yu3bVWcc2WF8tspvVub8ubQwy++1SlnTvkJG2Jkdy5rg2fU2uwhHllqw1ArJzzVzZ61DEG0cCEtiNg3Gi+r46p6jUPlQw/Y9uV5uVGHbWEXM14Fma+NEzmrZgYZOT+n1Lu/ZCglyvtd5/6FnwVZ4DxfgzPfKAZwOQWtwwkAo7o2xQDTxTJBN6clBqAOhZrA850MkJRtXA8wCScmCnJ7hU4071yAOec2kox56rkge/Qtqh3IqKRnnGEJIQ5SYQPdKAw2EaLZTcaHO+E+XIixGz5IDPeFVUY88USYOe0beohp4pkgjdHMTphYCW8oBnXDRDoM+USTMho71RDT9TJBH680DIn+UCJxw+qnETNfJgg2GmY6keecAzOiLl0DNN0sAXaI9Uoy+okgaf8Cuphk7UyISd8LcMADxRJA864YpSjpzokQo8ZaQaAnyqS7oBRe6roQwp6pRnUM62pdyOXJVE+NmJefXwi5GGJcEfampmSZ+aWQNNzSzZU7MCuZRq7AVV8uAXWNeU4y/okmdAMMgUk6iRBjslkVONO9UjD3iBqk45+IIueQb4gwyzRI1M2EXmvQHgF9VJM4Om+VNtBa1NnhFwwF6fUibPhGH2igPJe8U5LYly5JkmmeAH+iCYa5IGfrCJsfxpcTTYvDiSPzEe7OOI/G8jKVGmauSpHmnAUzpO1cBTPX2BF6k5FWEuquh7iIrB/akGNUuTkjNUXElbErW9rt4aw5cDRU8SmklceI4ThOUTrTkvqXBh1RGc8pQF4zg1IS7tCSMV0w1EzgrY1xuZoG5Acsa9nkByQd2AZOywPXFkcjrCyBhn++LIBDUD4Wv75XYY+J3bYUaP29XACs9unwLvjyOTo8LPGUdut3PTvMVU56OckberkxpIfrmKTWAQ6zpWNBtf4DTu74M6tmSBUb2ujOTj6wusykstDWBVtLTKJHmak1ARi05zkitE47T5nItauLha2LH7VKYKUbYccBWxU++Ucpryng6oEKfLKx1p4Cpih2rldY0Z32Aep1VSVO1dvVtP/j71ak/R3Pczn0WcP3K9Sojqx6lYhA+/q0+Z3PwSuhKpsGiZU6/rJDBCT9PpIA2SSkQaLFrmVCdvcQBi0bkbjlfcrSmL31ksFVY1pLRwaXEFqu5cmyphp+XhKwjtDI+OLi0DGy2xp99IqG95PiMCu8MqRgGXAqsosDMsKsC4DFiUwKl2VoT/U7S7KpCTdOu1+k/tWHz4wsUmzLjfZ0hk0e6rQix+WbOVE0slXOHrde3cVyrhit91aeeaU4lX/ABoM940EoIqvKl81ZPu/utrZkgHKW5pjhohsV0rBp1rkNm6FYMuqJDZxhWjtuSjTiNuqIKcyh95L6XIYjnOjko5Ekhnh/OEGelTO2pCjSjDW9DRA3ZDSBOZyBvUTH0DqRzSRo5bagLvSCtJ2Uir0kfumSiqw3G6pkpUm84O5wua06d3qomboxBxrkQebgndqlAUoF7NsTYQkFTsDXqm3rNW4ktJckxdZC3Z7Uct4lyJvFooHTJD/sjjQnLMd5wBoRQiqbOnGwMv9fr4VBeCSS7Uqvypd0WlQFt93cEO3yW/5KRDrcofuzlnVPQjNWkq6l13Z7eE0+tVNerC4ClBW9IhEXgWDVAd7kyFRNhqKwetotdMoBqQUB5ilvTJ9/lUUEwZvmCG7JRUZnIxliWP3MsncRXH6eHzeJCd3VsXYLJPL8MMNSkVYUn21JtrHvOzrxcqQUSneggB2u0HGbtdBVRRRlB3O15MiO0s3rjKRI3cL2HSzHiv2o+8jgc6enVPlP5OXVTiWkpO3AtUJE+6+dNou1cx2g+4plUkT7cvsMydaF/Q8WIhWgh2n4zHQOM6VhTT4VYhyo4p4XtjIEI6InB9KAECkdINA5ThBdjHCzH1cW8IqZRuGDDpVm8IREg3BJjFqTcCIqQbgmSXpj+IXE43HN3XvBQMoXVtFUVCUtIbRSZGxZXjjhQLWdfZbazD1sXzKFssHAij/zua3SLcUCBSKd1Hgf4Q+E9SMhHER/ZB18kHDaQgq9Nte1OT4hVaUDfP9KC+oLzSi/kirubdDjqX2gr3WWbWTKEz9wZdP/pQb6D8PrD3kSOh5ygI6oakz80UCongbZSaWZyEkvH5F6VMDFocg7HjGeEKlqK07jPL3lAEzqjXzCx7QxAJzcGeWfaGIMAJy0QgbXyhZXWf6fYGIkB6ypzpduV2pECIMTfWzrhl4CBy+uCQ139U5fVZCfSGI/YhomYl0BsFJ+uh5J0dD5WAd4Q+sAba3skV9vlYnEuJF1JMoRNaUVXxdakuBaNxnWEKVVN56l9UzuwD33gCDdemqwQ5OF7yQJUvi28vekoqNWsZZ8/4cChZ3bjLEhn4ZrHvWsJ7XU24yjIn1B7KGEWaQ8nklPymLK5PaYiexGqCxHf+ahJUVch7e/MQ+QAfv9JcJAGTqozzYVx3hbY7sxIgFBVsU9L2QYRP+qsTgdmlFjb7ICPZ5J8gq/vGaT9v3mh7CwRHLThGoeE+DUSVVjnppzGgJHOy3mHmmbL71G6GuIyTsc6KmpfKgrkP2XDGL8wezZRVmCl5o2hhip34mgirNOMF6xFdDsDz2loQznC2vAugHyw9GzwEpv1gOsst5isydTP8uo1LZfn4Rnty/YfAAzoawbE4bYfKx4YhiK/FfogHdaJwWQ/JBmZrq5aLKdXYACrOOyyqTGUDLOzNljYjv/iOHJ4aFFSmsgGWD4Fhw4VtDAmsoJSCRlhar0F4VKSZQ2HamXq++y+oh8sD1B9cDXWt2uvF6WItxswvU19+hkyC1OqaQibUCkenTOFV2iWZ/mid3SrwU0Y3KVN2De2KTBXls41yZZPNS/mAKyflVLi9fM9cQbXJiRIVNIAu80aZNtK7kSpKqHLnU0FnTfGRqzAiv+mmRDp1t0KFhvzYekm6DXTfPceRe03cBeczlvOLD3d/0S4+feHNkA3KH1ab1ac3683ll9c/8GbeftY+XL2/Odd+ef/lIp4QPQIrwm/+7X8iN/yPDzfnr1er9fvkL2GpNxd/Ywh9vzoVk/efSNav728uiNTzi0/v7z7fajeftA/vfznXfviO296SpO3d9fXVze1W26TCtn0lSQSVivpx/UZmeW7WK9nluRaW9/Hqy/XVLxe/3Gof39++/3z1F+365mKL/i7JQKOkD/yvn+gz5Xq5OTGTcSWyeRI5LuqISglx33flEcPwH5d4ZZE/XUT6ohC1BCVy4+dNyRa6F1EO1l0/hM9z+/R0CO37kva99/hmHniDqLZcEGpgZ1IAjvHHLWHtKUVvs/KMyDcPoMHY34oVfjaDMFOagmsNv/F2mSsUNQEfqrN3rTZkySZpRLzebrEgSUN+bHU0KwqpKvCHdKwFUegeoLNMUuJ188IaoHLgc3TxIimA8c+AQhf6UXl5pgCDAUIgVb9AwTjAcTVdQ93iGJa7thlqex/1wpqXLGpGAIEcAJ916I1V/Ei/H4bmwAUfny8CIfwCvHgwHN5uHcduc4x4DCiOiT/+OIDu5+ca7X/+83qtXj9aqzqmcwgWwLJGcH2mHj6HPhgTgAcN4ISmTk9Mkv3b4QrBhxr0fdcPxoCBU9jmb/FeHaU/MH/jU2+DBxiPmMC3F/jSeAj8AwzL+muSVWalcxs9eSc4N+2JITxG9q6EgjxTr7w8MZ7b6Mk7Mj2eG+vvBgHBnCIjKPj5HD1/xz1drqjI+71WNHnSug56HoTGO95eukG+5wmAwR8Y6/rsBBB3xy0ZEmv4nu8dd548HQVQzXwmhlV8N1xdSvtarTzgzX+NnwzrJrVoOvmlOhLPfyXPRvKNMkQi/qkdHOdXveuvqGdUYhHxSf16cb7H7+b5u2EdNBgwEW81r/Dn+/T9aF4bHKBQ+2teoc/3OME8TjDPEgzcLIeHKOLBaezcSfT3RA2q3VKtTzlVU9jbODXJ6vdWu2+p9kQUbypWthTnaDEF9eAdfruIfx0CS7rPpSV/azbwaFT/ReTdv5p/Ad67P/zx6u72+u5WO7+8+dPyD3+8vrn668XHW/zB7U+LODMH5uRD8sJENYPsb5fhknMtrkfPJODeP938dtic7lab1f7NemPala+9gg284igzYB0grq/tc1u3y/sgrXlayro1/6FPg0KmLwLTArsgLoLAPN0kLjHCRXJiwthFpmXEH6gWBydaFLq4HSBnBws+KwgspU4SLbBTF254hL6FzJm+e5kH2xvS720YBMhvcws6h/D4bjVw8eClrUgBFdP/fxGJF5EJ/AV88uLOpK4jubzAi8GrdC9ByDdVf4rjw9jwA/JpPS3uxzeL14t1GWxDBlI/gGHE5xiAhY/rjmMW71gn3IX/ap3M5we9bgnRDeTRDULJQ03bFEHVFFEY6DP6IxM3fzLD4zyeSA87aJE5TkuPKCpON309soBvQA86BnT0r92+EE3HIgfVVKMyIeX/vtNtxGI33j6yRIrmbXqMMf7r1dufn20LJ00Ye1Di9WIVZ0ZSXMN0DujR3e2nOZpu/pwISKeuORm0vrBdI0ItKoBh5C0MuAeRFW5hGMbf0eouLiziE11IDpLoQT/8utXRTyQwmxwv1YGM9OskSQ94xRpSvlBHVlms7oO+rLLQfcz/gk/m419jjbikke+yokOP0gWLwW5qxctfdBHPTmbbyy/Xny8/Xt7+Xdve3p1fXmlo+XJ9cXN7ebGdnc1+Jxd5GD64n53do/f3aO0CHqGxDV394W/ANwHq3wL8+Az/gxPg/6BK7JkolfHw2dWT/VDy4iz9pXR2Nn18kv7iAR91q9V87BUQefkt+QdJmZ0nde9l4f6GyiiBgM9cBKhI/vE7VklKHInDJX6S1bz4dDK2MF3KV+oQSuv65sFE0xaS2IksCz0lTQg9WJ/Et9dD6GBvrb9fvUYIv/9x8+1ETHd8L9r2XAcJ0pD3gOXG9D3CEObr1frN96sfv1u9/vbP2bf/BUMswA0==END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA
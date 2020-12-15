#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-MA330048_dsPIC33CK_DPPIM.mk)" "nbproject/Makefile-local-MA330048_dsPIC33CK_DPPIM.mk"
include nbproject/Makefile-local-MA330048_dsPIC33CK_DPPIM.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=MA330048_dsPIC33CK_DPPIM
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/dspic33c-power-pwm-push-pull.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/dspic33c-power-pwm-push-pull.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=sources/drivers/p33c_pwm.c mcc_generated_files/reset.c mcc_generated_files/tmr1.c mcc_generated_files/system.c mcc_generated_files/traps.c mcc_generated_files/clock.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c main.c sources/pwm_init.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/sources/drivers/p33c_pwm.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/main.o ${OBJECTDIR}/sources/pwm_init.o
POSSIBLE_DEPFILES=${OBJECTDIR}/sources/drivers/p33c_pwm.o.d ${OBJECTDIR}/mcc_generated_files/reset.o.d ${OBJECTDIR}/mcc_generated_files/tmr1.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/sources/pwm_init.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/sources/drivers/p33c_pwm.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/main.o ${OBJECTDIR}/sources/pwm_init.o

# Source Files
SOURCEFILES=sources/drivers/p33c_pwm.c mcc_generated_files/reset.c mcc_generated_files/tmr1.c mcc_generated_files/system.c mcc_generated_files/traps.c mcc_generated_files/clock.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c main.c sources/pwm_init.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-MA330048_dsPIC33CK_DPPIM.mk dist/${CND_CONF}/${IMAGE_TYPE}/dspic33c-power-pwm-push-pull.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33CK256MP506
MP_LINKER_FILE_OPTION=,--script=p33CK256MP506.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/sources/drivers/p33c_pwm.o: sources/drivers/p33c_pwm.c  .generated_files/9077aa8778a7bf144368f024b2e8c0a9fbbbe946.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/sources/drivers" 
	@${RM} ${OBJECTDIR}/sources/drivers/p33c_pwm.o.d 
	@${RM} ${OBJECTDIR}/sources/drivers/p33c_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/drivers/p33c_pwm.c  -o ${OBJECTDIR}/sources/drivers/p33c_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/drivers/p33c_pwm.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/827debeaacafb7f7a3ea96d50231a75f0cdbdca3.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/3a51ccf8c29c47572fa70de9eed7cc87dc7da0a5.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/a42b2bfd52178f950911993e031c93c19f951c09.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/8a5c402f14e3ab9f09dac2725a57841eb0aa10ea.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/7a6999b1d6067abf0954f01eabb61540f58d718e.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/4305f9526ad6fd1d74e7aec8006094dde4b85aa2.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/5b476229a14b765bcdfb5c7d803bbd1685aed32f.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/e066022109d478ce0a6ef1a0df4a48d95ff42572.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/dee459eb5f4156c96845dc21149eae277ab44fad.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sources/pwm_init.o: sources/pwm_init.c  .generated_files/a610cc8eca01f9995ac215dcb192fafe1b5272c.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/sources" 
	@${RM} ${OBJECTDIR}/sources/pwm_init.o.d 
	@${RM} ${OBJECTDIR}/sources/pwm_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwm_init.c  -o ${OBJECTDIR}/sources/pwm_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/pwm_init.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/sources/drivers/p33c_pwm.o: sources/drivers/p33c_pwm.c  .generated_files/d7d3acdb539f95a0f0902ea0cc89731af6e84c62.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/sources/drivers" 
	@${RM} ${OBJECTDIR}/sources/drivers/p33c_pwm.o.d 
	@${RM} ${OBJECTDIR}/sources/drivers/p33c_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/drivers/p33c_pwm.c  -o ${OBJECTDIR}/sources/drivers/p33c_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/drivers/p33c_pwm.o.d"      -mno-eds-warn  -g -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/485df4de89d599804a0109f2710a25348a24d9cd.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -mno-eds-warn  -g -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/5b378f718490293c4dca1e395d95290e8949cb27.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -mno-eds-warn  -g -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/9ed4ade894e089ce3e5a43fb7c68b1c85c6da517.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/88c4cca041a20c26b84eb9e02f9ac50612b9577a.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/71e67c3dd7f7334203f1a5e21228153e331f53cc.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/2d0f4cb26df0af697b1fb5e6d159ca11a6cab1b7.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/4aa2e636469840010374bdb6d9e2d2a4d404a2fd.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/a6f9c10b57a1e3d0b16a79934c13deddeda62ab.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/96e1f8aaf5320cb11e74f35e3784c223bb40ef55.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sources/pwm_init.o: sources/pwm_init.c  .generated_files/16e3b8d81af24cb7304cdcedfe3b4e41d15bc1c7.flag .generated_files/44ae38f7e8c3c1209f13373702a149f40e0b677b.flag
	@${MKDIR} "${OBJECTDIR}/sources" 
	@${RM} ${OBJECTDIR}/sources/pwm_init.o.d 
	@${RM} ${OBJECTDIR}/sources/pwm_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwm_init.c  -o ${OBJECTDIR}/sources/pwm_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sources/pwm_init.o.d"      -mno-eds-warn  -g -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -O0 -I"C:/Program Files/Microchip/xc16/v1.50/support/dsPIC33C/h" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/dspic33c-power-pwm-push-pull.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/dspic33c-power-pwm-push-pull.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources"  -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/dspic33c-power-pwm-push-pull.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/dspic33c-power-pwm-push-pull.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -D__DM330029_R20__ -D__MA330048_dsPIC33CK_DPPIM__ -DXPRJ_MA330048_dsPIC33CK_DPPIM=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources" -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/dspic33c-power-pwm-push-pull.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/MA330048_dsPIC33CK_DPPIM
	${RM} -r dist/MA330048_dsPIC33CK_DPPIM

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

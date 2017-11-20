################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../framework/Reset/Reset.c 

OBJS += \
./framework/Reset/Reset.o 

C_DEPS += \
./framework/Reset/Reset.d 


# Each subdirectory must supply rules for building sources it contributes
framework/Reset/%.o: ../framework/Reset/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCR_INTEGER_PRINTF -DDEBUG -DFSL_RTOS_FREE_RTOS -DFRDM_KW41Z -DFREEDOM -DSDK_DEBUGCONSOLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DSDK_OS_FREE_RTOS -DCPU_MKW41Z512VHT4 -DCPU_MKW41Z512VHT4_cm0plus -D__REDLIB__ -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\source" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\freertos" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\bluetooth\hci_transport\interface" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\MWSCoexistence\Interface" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\drivers" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\DCDC\Interface" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\Keyboard\Interface" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\TimersManager\Interface" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\TimersManager\Source" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\SerialManager\Source\SPI_Adapter" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\OSAbstraction\Interface" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\Lists" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\Flash\Internal" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\utilities" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\source\common" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\source\common\gatt_db\macros" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\source\common\gatt_db" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\LowPower\Interface\MKW41Z" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\LowPower\Source\MKW41Z" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\RNG\Interface" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\CMSIS" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\FunctionLib" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\Messaging\Interface" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\NVM\Interface" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\NVM\Source" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\SecLib" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\XCVR\MKW41Z4" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\MemManager\Interface" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\board" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\common" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\bluetooth\profiles\device_info" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\LED\Interface" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\GPIO" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\ModuleInfo" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\SerialManager\Source\UART_Adapter" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\bluetooth\profiles\battery" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\Panic\Interface" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\SerialManager\Source\I2C_Adapter" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\bluetooth\profiles\heart_rate" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\framework\SerialManager\Interface" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\bluetooth\controller\interface" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\bluetooth\host\interface" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\bluetooth\host\config" -I"C:\Users\rober_000\Documents\GitHub\FRDMKW41Z_breaking_disc_control_unit\FRDMKW41Z_braking_disc_control_unit\bluetooth\profiles\bike_simulator" -O0 -fno-common -g -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -imacros "C:/Users/rober_000/Documents/GitHub/FRDMKW41Z_breaking_disc_control_unit/FRDMKW41Z_braking_disc_control_unit/source/app_preinclude.h" -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



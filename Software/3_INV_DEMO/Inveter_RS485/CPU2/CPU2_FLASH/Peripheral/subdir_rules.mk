################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
Peripheral/ISR.obj: ../Peripheral/ISR.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 --float_support=fpu32 -O3 --opt_for_speed=3 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/git/MIT-Pico-Grid/Project/New_MG/Firmware/Inveter_RS485/CPU2/F2837xD_common/include" --include_path="C:/git/MIT-Pico-Grid/Project/New_MG/Firmware/Inveter_RS485/CPU2/F2837xD_headers/include" -g --define=_FLASH --define=CPU2 --display_error_number --diag_suppress=1311 --diag_warning=225 --preproc_with_compile --preproc_dependency="Peripheral/ISR.d" --obj_directory="Peripheral" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/Peripheral.obj: ../Peripheral/Peripheral.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 --float_support=fpu32 -O3 --opt_for_speed=3 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/git/MIT-Pico-Grid/Project/New_MG/Firmware/Inveter_RS485/CPU2/F2837xD_common/include" --include_path="C:/git/MIT-Pico-Grid/Project/New_MG/Firmware/Inveter_RS485/CPU2/F2837xD_headers/include" -g --define=_FLASH --define=CPU2 --display_error_number --diag_suppress=1311 --diag_warning=225 --preproc_with_compile --preproc_dependency="Peripheral/Peripheral.d" --obj_directory="Peripheral" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/SCI.obj: ../Peripheral/SCI.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 --float_support=fpu32 -O3 --opt_for_speed=3 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/git/MIT-Pico-Grid/Project/New_MG/Firmware/Inveter_RS485/CPU2/F2837xD_common/include" --include_path="C:/git/MIT-Pico-Grid/Project/New_MG/Firmware/Inveter_RS485/CPU2/F2837xD_headers/include" -g --define=_FLASH --define=CPU2 --display_error_number --diag_suppress=1311 --diag_warning=225 --preproc_with_compile --preproc_dependency="Peripheral/SCI.d" --obj_directory="Peripheral" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/Timer.obj: ../Peripheral/Timer.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 --float_support=fpu32 -O3 --opt_for_speed=3 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="C:/git/MIT-Pico-Grid/Project/New_MG/Firmware/Inveter_RS485/CPU2/F2837xD_common/include" --include_path="C:/git/MIT-Pico-Grid/Project/New_MG/Firmware/Inveter_RS485/CPU2/F2837xD_headers/include" -g --define=_FLASH --define=CPU2 --display_error_number --diag_suppress=1311 --diag_warning=225 --preproc_with_compile --preproc_dependency="Peripheral/Timer.d" --obj_directory="Peripheral" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '



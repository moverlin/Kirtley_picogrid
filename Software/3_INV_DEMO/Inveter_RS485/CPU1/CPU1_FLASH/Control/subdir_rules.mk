################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
Control/Control.obj: ../Control/Control.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 --float_support=fpu32 -O3 --opt_for_speed=3 --include_path="C:/git/MIT-Pico-Grid/Project/New_MG/Firmware/Inveter_RS485/CPU1/F2837xD_common/include" --include_path="C:/git/MIT-Pico-Grid/Project/New_MG/Firmware/Inveter_RS485/CPU1/F2837xD_headers/include" --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" -g --define=CPU1 --define=_FLASH --display_error_number --diag_suppress=1311 --diag_warning=225 --preproc_with_compile --preproc_dependency="Control/Control.d" --obj_directory="Control" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Control/Meas.obj: ../Control/Meas.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 --float_support=fpu32 -O3 --opt_for_speed=3 --include_path="C:/git/MIT-Pico-Grid/Project/New_MG/Firmware/Inveter_RS485/CPU1/F2837xD_common/include" --include_path="C:/git/MIT-Pico-Grid/Project/New_MG/Firmware/Inveter_RS485/CPU1/F2837xD_headers/include" --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" -g --define=CPU1 --define=_FLASH --display_error_number --diag_suppress=1311 --diag_warning=225 --preproc_with_compile --preproc_dependency="Control/Meas.d" --obj_directory="Control" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '



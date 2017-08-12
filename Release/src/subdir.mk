################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/particleSystem.cpp \
../src/particles.cpp \
../src/render_particles.cpp \
../src/shaders.cpp 

CU_SRCS += \
../src/particleSystem_cuda.cu 

CU_DEPS += \
./src/particleSystem_cuda.d 

OBJS += \
./src/particleSystem.o \
./src/particleSystem_cuda.o \
./src/particles.o \
./src/render_particles.o \
./src/shaders.o 

CPP_DEPS += \
./src/particleSystem.d \
./src/particles.d \
./src/render_particles.d \
./src/shaders.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-7.5/bin/nvcc -I"/usr/local/cuda-7.5/samples/5_Simulations" -I"/usr/local/cuda-7.5/samples/common/inc" -I"/home/keedy/cuda-workspace/ULMO" -O3 -gencode arch=compute_52,code=sm_52  -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-7.5/bin/nvcc -I"/usr/local/cuda-7.5/samples/5_Simulations" -I"/usr/local/cuda-7.5/samples/common/inc" -I"/home/keedy/cuda-workspace/ULMO" -O3 --compile  -x c++ -o  "$@" "$<" -D_FORCE_INLINES
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-7.5/bin/nvcc -I"/usr/local/cuda-7.5/samples/5_Simulations" -I"/usr/local/cuda-7.5/samples/common/inc" -I"/home/keedy/cuda-workspace/ULMO" -O3 -gencode arch=compute_52,code=sm_52  -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-7.5/bin/nvcc -I"/usr/local/cuda-7.5/samples/5_Simulations" -I"/usr/local/cuda-7.5/samples/common/inc" -I"/home/keedy/cuda-workspace/ULMO" -O3 --compile --relocatable-device-code=false -gencode arch=compute_52,code=compute_52 -gencode arch=compute_52,code=sm_52  -x cu -o  "$@" "$<" -D_FORCE_INLINES
	@echo 'Finished building: $<'
	@echo ' '



cmd_arch/arm/mm/pabort-legacy.o := /opt/toolchains/arm-eabi-4.6/bin/arm-eabi-gcc -Wp,-MD,arch/arm/mm/.pabort-legacy.o.d  -nostdinc -isystem /opt/toolchains/arm-eabi-4.6/bin/../lib/gcc/arm-eabi/4.6.x-google/include -I/home/manu/Downloads/Major_Project/Kernel_GT-I9082/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include include/generated/autoconf.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-versatile/include -Iarch/arm/plat-versatile/include -D__ASSEMBLY__ -mabi=apcs-gnu -mno-thumb-interwork  -D__LINUX_ARM_ARCH__=5 -march=armv5te -mtune=arm9tdmi -include asm/unified.h -mfloat-abi=soft        -c -o arch/arm/mm/pabort-legacy.o arch/arm/mm/pabort-legacy.S

source_arch/arm/mm/pabort-legacy.o := arch/arm/mm/pabort-legacy.S

deps_arch/arm/mm/pabort-legacy.o := \
  /home/manu/Downloads/Major_Project/Kernel_GT-I9082/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  include/linux/linkage.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /home/manu/Downloads/Major_Project/Kernel_GT-I9082/arch/arm/include/asm/linkage.h \
  /home/manu/Downloads/Major_Project/Kernel_GT-I9082/arch/arm/include/asm/assembler.h \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/smp.h) \
  /home/manu/Downloads/Major_Project/Kernel_GT-I9082/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/arm/thumb.h) \
  /home/manu/Downloads/Major_Project/Kernel_GT-I9082/arch/arm/include/asm/hwcap.h \
  /home/manu/Downloads/Major_Project/Kernel_GT-I9082/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/use/domains.h) \

arch/arm/mm/pabort-legacy.o: $(deps_arch/arm/mm/pabort-legacy.o)

$(deps_arch/arm/mm/pabort-legacy.o):

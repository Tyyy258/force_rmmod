obj-m:=force_rmmod.o
PWD:= $(shell pwd)
KERNELDIR:= /lib/modules/$(shell uname -r)/build
EXTRA_CFLAGS= -O0
CONFIG_MODULE_SIG=n

all:
	make -C $(KERNELDIR)  M=$(PWD) modules 
clean:
	make -C $(KERNELDIR) M=$(PWD) clean

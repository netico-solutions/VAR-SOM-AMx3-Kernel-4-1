#!/usr/bin/env bash

cd ${URTU_KERNEL}
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- mrproper
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- var-som-am33-klaus_defconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j5 zImage LOADADDR=0x80200000
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j5 modules
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- var-som-am33-urtu.dtb
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- var-som-am33-urtu-eth2.dtb



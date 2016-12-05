#!/usr/bin/env bash

if [ ! -d ${URTU_KERNEL_BIN} ] ; then
    echo 'Creating: ' ${URTU_KERNEL_BIN}
    mkdir -p ${URTU_KERNEL_BIN}
fi

if [ ! -d ${URTU_KERNEL_BOOT} ] ; then
    echo 'Creating: ' ${URTU_KERNEL_BOOT}
    mkdir -p ${URTU_KERNEL_BOOT}
fi

cd ${URTU_KERNEL}


make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- zImage LOADADDR=0x80200000
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- modules
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- var-som-am33-urtu.dts

cp ${URTU_KERNEL_BOOT}/zImage ${URTU_KERNEL_BIN}/zImage-4.1.6-urtu
cp ${URTU_KERNEL_BOOT}/dts/var-som-am33-urtu.dtb ${URTU_KERNEL_BIN}/devicetree-zImage-var-som-am33-urtu.dtb

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- modules_install INSTALL_MOD_PATH=${URTU_KERNEL_MODULES}
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- headers_install INSTALL_HDR_PATH=${URTU_KERNEL_INCLUDE}


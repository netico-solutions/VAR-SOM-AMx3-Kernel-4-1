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


cp ${URTU_KERNEL_BOOT}/zImage ${URTU_KERNEL_BIN}/zImage-4.1.6-urtu
cp ${URTU_KERNEL_BOOT}/dts/var-som-am33-urtu.dtb ${URTU_KERNEL_BIN}/devicetree-zImage-var-som-am33-urtu.dtb
cp ${URTU_KERNEL_BOOT}/dts/var-som-am33-urtu-eth2.dtb ${URTU_KERNEL_BIN}/devicetree-zImage-var-som-am33-urtu-eth2.dtb

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- modules_install INSTALL_MOD_PATH=${URTU_KERNEL_MODULES}
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- headers_install INSTALL_HDR_PATH=${URTU_KERNEL_INCLUDE}


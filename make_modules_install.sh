#!/usr/bin/env bash

echo "Output directory: ${URTU_KERNEL_MODULES}"

read  -n 1 -p "Continue ? [y/n]" mainmenuinput

echo

if [ "$mainmenuinput" = "y" ] ; then
    make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- modules_install INSTALL_MOD_PATH=~/kernel-out-of-tree/VAR-SOM-AMx3-Kernel-4-1-modules
fi


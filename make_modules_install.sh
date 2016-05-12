#!/bin/sh

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- modules_install INSTALL_MOD_PATH=~/kernel-out-of-tree/VAR-SOM-AMx3-Kernel-4-1-modules

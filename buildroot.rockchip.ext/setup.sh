#!/bin/bash -x

cd buildroot || exit 1
make BR2_EXTERNAL="$(pwd)/../buildroot.rockchip.ext" rock5b_defconfig

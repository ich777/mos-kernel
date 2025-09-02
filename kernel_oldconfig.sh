#!/bin/bash

# Install dependencies
apt-get update && apt-get -y install build-essential flex bison libncurses-dev libssl-dev libelf-dev bc dwarves kmod squashfs-tools

# Set Variables and create directories
DEFAULT_DIR=/root/runner_workdir/mos-kernel/mos-kernel
BUILD_DIR=${DEFAULT_DIR}/build
WORK_DIR=${DEFAULT_DIR}
KERNEL_V=$1
mkdir -p $BUILD_DIR $WORK_DIR/$KERNEL_V

# Download and extract Kernel
cd $BUILD_DIR
wget -O $BUILD_DIR/linux-$KERNEL_V.tar.xz https://cdn.kernel.org/pub/linux/kernel/v${KERNEL_V%%.*}.x/linux-$KERNEL_V.tar.xz;
mkdir -p $BUILD_DIR/$KERNEL_V
tar -C $BUILD_DIR/$KERNEL_V --strip-components=1 -xf $BUILD_DIR/linux-$KERNEL_V.tar.xz
cd $BUILD_DIR/$KERNEL_V

# Download config and start oldconfig
wget -O $BUILD_DIR/$KERNEL_V/.config "https://raw.githubusercontent.com/ich777/mos-kernel/refs/heads/master/kernel-config/config"
make oldconfig

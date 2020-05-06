#!/bin/bash

set -o errexit
set -o xtrace

make clean
make
sudo cp awusb.ko /lib/modules/`uname -r`/kernel/
sudo depmod -a
sudo modprobe awusb

echo "Done!"


#!/bin/bash

echo "Arch-Linux installation script"

# Increase cowspace
mount -o remount,size=4G /run/archiso/cowspace

cd arch-scripts
./install.sh

#!/bin/bash

echo "Arch-Linux post installation script"

# Remount
mount -o remount,size=4G /run/archiso/cowspace

cd arch-scripts/
./post-install.sh

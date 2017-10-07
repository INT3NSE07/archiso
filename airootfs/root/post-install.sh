#!/bin/bash

echo "Arch-Linux post installation script"

unset NETC
ping -c1 www.google.com &> /dev/null
NETC=$?

# Remount
mount -o remount,size=4G /run/archiso/cowspace

cd arch-scripts/
./post-install.sh

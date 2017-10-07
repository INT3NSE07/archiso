#!/bin/bash

echo "Arch-Linux installation script"

unset NETC
ping -c1 www.google.com &> /dev/null
NETC=$?

# Increase cowspace
mount -o remount,size=4G /run/archiso/cowspace

cd arch-scripts
./install.sh

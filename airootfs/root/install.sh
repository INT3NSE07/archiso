#!/bin/bash

echo "Arch-Linux installation script"
echo "Waiting for network connection... "

while true
do
   ping -c1 www.google.com &> /dev/null && break
done

# Increase cowspace
mount -o remount,size=4G /run/archiso/cowspace

cd arch-scripts
./install.sh

#!/bin/bash

echo "Arch-Linux post installation script"
echo "Waiting for network connection... "

while true
do
   ping -c1 www.google.com &> /dev/null && break
done

# Remount
mount -o remount,size=2G /run/archiso/cowspace

cd arch-scripts/
./post-install.sh

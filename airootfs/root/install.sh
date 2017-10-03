#!/bin/bash

echo "Arch-Linux installation script"
echo "Waiting for network connection... "

while true
do
   ping -c1 www.google.com &> /dev/null && break
done

# Increase cowspace
mount -o remount,size=2G /run/archiso/cowspace

git clone https://bitbucket.org/INT3NSE07/aui/ arch-scripts
cd arch-scripts
./install.sh

#!/bin/bash

echo "Arch-Linux installation script"
echo "Waiting for network connection... "

while true
do
   ping -c1 www.google.com &> /dev/null && break
done

git clone https://bitbucket.org/INT3NSE07/aui/ arch-scripts
cd arch-scripts
./install.sh

#!/bin/bash

echo "Arch-Linux setup"
echo "Waiting for network connection... "

while true
do
   ping -c1 www.google.com &> /dev/null && break
done

git clone https://bitbucket.org/INT3NSE07/aui/ arch-scripts
./arch-scripts/install.sh


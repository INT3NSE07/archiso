#!/bin/bash

echo "Arch-Linux post installation script"
echo "Waiting for network connection... "

while true
do
   ping -c1 www.google.com &> /dev/null && break
done

./post-install.sh

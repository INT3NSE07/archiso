#!/bin/bash

ARCH='x86_64'
MIRROR='https://mirrors.kernel.org/archlinux/'
DIRPATH=pacmandb

# Do full update
sudo pacman -Syyu

wget -P ./airootfs/root/${DIRPATH} "${MIRROR}/community/os/${ARCH}/community.db"
wget -P ./airootfs/root/${DIRPATH} "${MIRROR}/core/os/${ARCH}/core.db"
wget -P ./airootfs/root/${DIRPATH} "${MIRROR}/extra/os/${ARCH}/extra.db"
if [ "$ARCH" == "x86_64" ]; then
  wget -P ./airootfs/root/${DIRPATH} "${MIRROR}/multilib/os/${ARCH}/multilib.db"
fi

#!/bin/bash

ARCH='x86_64'
MIRROR='https://mirrors.kernel.org/archlinux/'
PATH=pacmandb

wget -P ${PATH} "${MIRROR}/community/os/${ARCH}/community.db"
wget -P ${PATH} "${MIRROR}/core/os/${ARCH}/core.db"
wget -P ${PATH} "${MIRROR}/extra/os/${ARCH}/extra.db"
if [ "$ARCH" == "x86_64" ]; then
  wget -P ${PATH} "${MIRROR}/multilib/os/${ARCH}/multilib.db"
fi

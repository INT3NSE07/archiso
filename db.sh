#!/bin/bash

ARCH='x86_64'
MIRROR='https://mirrors.kernel.org/archlinux/'
DIRPATH=pacmandb

wget -P ${DIRPATH} "${MIRROR}/community/os/${ARCH}/community.db"
wget -P ${DIRPATH} "${MIRROR}/core/os/${ARCH}/core.db"
wget -P ${DIRPATH} "${MIRROR}/extra/os/${ARCH}/extra.db"
if [ "$ARCH" == "x86_64" ]; then
  wget -P ${DIRPATH} "${MIRROR}/multilib/os/${ARCH}/multilib.db"
fi

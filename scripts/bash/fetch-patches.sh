#!/bin/sh

#lftp -c "mirror -rp ftp://ftp.cwru.edu/pub/bash/bash-5.2-patches/ patches"

lftp -c "mirror -rp https://ftp.gnu.org/gnu/bash/bash-5.2-patches/ patches"
ls patches/*-??? | cut -d- -f2 | sort -rn | head -n1 >PATCHLEVEL

echo Patchlevel $(cat PATCHLEVEL)


#!/bin/sh

ASIHPI_VERSION=4.20.35

rm -f *.buildinfo *.changes *.ddeb *.deb *.dsc *.debian.tar.xz
rm -rf hpklinux_$ASIHPI_VERSION
rm -rf hpklinux_$ASIHPI_VERSION-orig
rm -f debian/control
tar -zvxf hpklinux_$ASIHPI_VERSION.tar.gz
sed s/@KERNEL_VERSION@/`uname -r`/ < debian/control.src > debian/control
cp -a debian hpklinux_$ASIHPI_VERSION/
tar -zvcf hpklinux_$ASIHPI_VERSION.orig.tar.gz hpklinux_$ASIHPI_VERSION

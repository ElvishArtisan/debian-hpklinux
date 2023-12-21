#!/bin/sh

ASIHPI_VERSION=4.20.39

rm -f *.buildinfo *.changes *.ddeb *.deb *.dsc *.debian.tar.xz *.orig.tar.gz
rm -rf hpklinux_$ASIHPI_VERSION
rm -f debian/control
rm -f debian/load_asihpi.sh

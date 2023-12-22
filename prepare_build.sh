#!/bin/sh

. ./versions.sh

rm -f *.buildinfo *.changes *.ddeb *.deb *.dsc *.debian.tar.xz
rm -rf hpklinux_$ASIHPI_VERSION
rm -rf hpklinux_$ASIHPI_VERSION-orig
rm -f debian/control
tar -zvxf hpklinux_$ASIHPI_VERSION.tar.gz
sed s/@ASIHPI_PKG_VERSION@/$ASIHPI_PKG_VERSION/ < debian/control.src > debian/control
sed s/@ASIHPI_VERSION@/$ASIHPI_VERSION/ < debian/rules.src > debian/rules
sed s/@ASIHPI_VERSION@/$ASIHPI_VERSION/ < debian/load_asihpi.sh.in > debian/load_asihpi.sh
chmod 755 debian/load_asihpi.sh
sed s/@ASIHPI_VERSION@/$ASIHPI_VERSION/ < debian/prerm.src > debian/prerm.src2
sed s/@ASIHPI_MAJOR_VERSION@/$ASIHPI_MAJOR_VERSION/ < debian/prerm.src2 > debian/prerm
chmod 755 debian/prerm
rm debian/prerm.src2
cp -a debian hpklinux_$ASIHPI_VERSION/
tar -zvcf hpklinux_$ASIHPI_VERSION.orig.tar.gz hpklinux_$ASIHPI_VERSION

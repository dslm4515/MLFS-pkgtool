#! /bin/bash
# syntax *.build <package.tar.xz> <number of make jobs>

# Load pkg build system configuration
source /tools/etc/00-pkgsystem.config &&

# Extract package info
export PACKAGE=$(echo "$1" | cut -d "." -f -3 ) &&
export PACKAGENAME=$(echo "$1" | cut -d "." -f -3 | cut -d "-" -f -1 ) &&
export PVER=$(echo "$1" | cut -d "." -f -3 | cut -d "-" -f 2 ) &&
cd $PACKAGE &&
mkdir -pv ${BSTAGE}/${PACKAGE}/install &&
cp -v ${SRCDIR}/descs/${PACKAGENAME} ${BSTAGE}/${PACKAGE}/install/slack-desc &&
##### Configure package #########################################################
python3 setup.py build &&

##### Compile it ################################################################
# No make command.
read -p "Compile?" &&
python3 setup.py install --root=dest &&

##### Fake install it ###########################################################
read -p "Psudo-Install?" && 
cp -rv dest/* ${BSTAGE}/${PACKAGE}/ &&

##################################################################################
cd ${BSTAGE}/${PACKAGE} &&
read -p "Remove SRC build?" && rm -rf ${SRCDIR}/${PACKAGE} &&

##### Build package
read -p "Generate package?" &&
/sbin/makepkg -l y -c n ${PSTAGE}/${PACKAGE}-x86_64-musl-mlfs.txz &&
cd /sources &&
read -p "Remove PKG Build?" && rm -rf ${BSTAGE}/${PACKAGE}

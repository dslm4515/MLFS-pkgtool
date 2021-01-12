#! /bin/bash

export MLFS=/mnt/mlfs
# Script requires the following layout:
# ${MLFS}/sources
#         +--files
#         +--packages
#         +--patches
#         +--scripts (contains auto-build scripts, including this script)

cd ${MLFS}/sources

export PRGRSS=/tmp
source scripts/toolchain.conf

read -p "Check build progress at ${PRGRSS}/tc.progess" && \

printf "01/36: Musl Libc ............." >> ${PRGRSS}/tc.progress && bash scripts/tc-musl.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "02/36: Adjust Cross toolchain." >> ${PRGRSS}/tc.progress && bash scripts/tc-Adjust_CT.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "03/36: Binutils..............." >> ${PRGRSS}/tc.progress && bash scripts/tc-binutils.sh     && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "04/36: GCC...................." >> ${PRGRSS}/tc.progress && bash scripts/tc-gcc.sh          && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "05/36: Kernel Headers........." >> ${PRGRSS}/tc.progress && bash scripts/tc-headers.sh      && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "06/36: Adjust Toolchain......." >> ${PRGRSS}/tc.progress && bash scripts/tc-Adjust_TC.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "07/36: Libstdc++ (GCC)........" >> ${PRGRSS}/tc.progress && bash scripts/tc-libstdcxx.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "08/36: TCL...................." >> ${PRGRSS}/tc.progress && bash scripts/tc-tcl.sh          && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "09/36: Expect................." >> ${PRGRSS}/tc.progress && bash scripts/tc-expect.sh       && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "10/36: DejaGnu................" >> ${PRGRSS}/tc.progress && bash scripts/tc-dejagnu.sh      && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "11/36: M4....................." >> ${PRGRSS}/tc.progress && bash scripts/tc-m4.sh           && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "12/36: Ncurses................" >> ${PRGRSS}/tc.progress && bash scripts/tc-ncurses.sh      && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "13/36: Bash..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-bash.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "14/36: Bison.................." >> ${PRGRSS}/tc.progress && bash scripts/tc-bison.sh        && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "15/36: Bzip2.................." >> ${PRGRSS}/tc.progress && bash scripts/tc-bzip2.sh        && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "16/36: Coreutils.............." >> ${PRGRSS}/tc.progress && bash scripts/tc-coreutils.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "17/36: diffutils.............." >> ${PRGRSS}/tc.progress && bash scripts/tc-diffutils.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "18/36: file..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-file.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "19/36: findutils.............." >> ${PRGRSS}/tc.progress && bash scripts/tc-findutils.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "20/36: Gawk..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-gawk.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "21/36: Gettext-tiny..........." >> ${PRGRSS}/tc.progress && bash scripts/tc-gettext-tiny.sh && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "22/36: Grep..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-grep.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "23/36: Gzip..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-gzip.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "24/36: Make..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-make.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "25/36: Patch.................." >> ${PRGRSS}/tc.progress && bash scripts/tc-patch.sh        && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "26/36: Perl..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-perl.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "27/36: Sed...................." >> ${PRGRSS}/tc.progress && bash scripts/tc-sed.sh          && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "28/36: Tar...................." >> ${PRGRSS}/tc.progress && bash scripts/tc-tar.sh          && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "39/36: Texinf................." >> ${PRGRSS}/tc.progress && bash scripts/tc-texinfo.sh      && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "30/36: Xz....................." >> ${PRGRSS}/tc.progress && bash scripts/tc-xz.sh           && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "31/36: nano..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-nano.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "32/36: which.................." >> ${PRGRSS}/tc.progress && bash scripts/tc-which.sh        && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "33/36: Tar-1.13..............." >> ${PRGRSS}/tc.progress && bash scripts/tc-tar-1.13.sh     && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "34/36: Util-Linux............." >> ${PRGRSS}/tc.progress && bash scripts/tc-util-linux.sh   && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "35/36: Tree..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-tree.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "36/36: Pkgtools..............." >> ${PRGRSS}/tc.progress && bash scripts/tc-pkgtools.sh     && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
echo   "Toolchain Complete!" >> ${PRGRSS}/tc.progress

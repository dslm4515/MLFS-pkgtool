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

printf "01/37: Musl Libc ............." >> ${PRGRSS}/tc.progress && bash scripts/tc-musl.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "02/37: Adjust Cross toolchain." >> ${PRGRSS}/tc.progress && bash scripts/tc-Adjust_CT.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "03/37: Binutils..............." >> ${PRGRSS}/tc.progress && bash scripts/tc-binutils.sh     && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "04/37: GCC...................." >> ${PRGRSS}/tc.progress && bash scripts/tc-gcc.sh          && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "05/37: Kernel Headers........." >> ${PRGRSS}/tc.progress && bash scripts/tc-headers.sh      && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "06/37: Adjust Toolchain......." >> ${PRGRSS}/tc.progress && bash scripts/tc-Adjust_TC.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "07/37: Libstdc++ (GCC)........" >> ${PRGRSS}/tc.progress && bash scripts/tc-libstdcxx.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "08/37: TCL...................." >> ${PRGRSS}/tc.progress && bash scripts/tc-tcl.sh          && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "09/37: Expect................." >> ${PRGRSS}/tc.progress && bash scripts/tc-expect.sh       && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "10/37: DejaGnu................" >> ${PRGRSS}/tc.progress && bash scripts/tc-dejagnu.sh      && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "11/37: M4....................." >> ${PRGRSS}/tc.progress && bash scripts/tc-m4.sh           && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "12/37: Ncurses................" >> ${PRGRSS}/tc.progress && bash scripts/tc-ncurses.sh      && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "13/37: Bash..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-bash.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "14/37: Bison.................." >> ${PRGRSS}/tc.progress && bash scripts/tc-bison.sh        && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "15/37: Bzip2.................." >> ${PRGRSS}/tc.progress && bash scripts/tc-bzip2.sh        && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "16/37: Coreutils.............." >> ${PRGRSS}/tc.progress && bash scripts/tc-coreutils.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "17/37: diffutils.............." >> ${PRGRSS}/tc.progress && bash scripts/tc-diffutils.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "18/37: file..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-file.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "19/37: findutils.............." >> ${PRGRSS}/tc.progress && bash scripts/tc-findutils.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "20/37: Gawk..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-gawk.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "21/37: Gettext-tiny..........." >> ${PRGRSS}/tc.progress && bash scripts/tc-gettext-tiny.sh && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "22/37: Grep..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-grep.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "23/37: Gzip..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-gzip.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "24/37: Make..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-make.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "25/37: Patch.................." >> ${PRGRSS}/tc.progress && bash scripts/tc-patch.sh        && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "26/37: Perl..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-perl.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "27/37: Sed...................." >> ${PRGRSS}/tc.progress && bash scripts/tc-sed.sh          && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "28/37: Tar...................." >> ${PRGRSS}/tc.progress && bash scripts/tc-tar.sh          && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "39/37: Texinfo................" >> ${PRGRSS}/tc.progress && bash scripts/tc-texinfo.sh      && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "30/37: Xz....................." >> ${PRGRSS}/tc.progress && bash scripts/tc-xz.sh           && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "31/37: flex..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-flex.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "32/37: nano..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-nano.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "33/37: which.................." >> ${PRGRSS}/tc.progress && bash scripts/tc-which.sh        && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "34/37: Tar-1.13..............." >> ${PRGRSS}/tc.progress && bash scripts/tc-tar-1.13.sh     && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "35/37: Util-Linux............." >> ${PRGRSS}/tc.progress && bash scripts/tc-util-linux.sh   && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "36/37: Tree..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-tree.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "37/37: Pkgtools..............." >> ${PRGRSS}/tc.progress && bash scripts/tc-pkgtools.sh     && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
echo   "Toolchain Complete!" >> ${PRGRSS}/tc.progress

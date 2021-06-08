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

printf "01/38: Musl Libc ............." >> ${PRGRSS}/tc.progress && bash scripts/tc-musl.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "02/38: Adjust Cross toolchain." >> ${PRGRSS}/tc.progress && bash scripts/tc-Adjust_CT.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "03/38: Binutils..............." >> ${PRGRSS}/tc.progress && bash scripts/tc-binutils.sh     && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "04/38: GCC...................." >> ${PRGRSS}/tc.progress && bash scripts/tc-gcc.sh          && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "05/38: Kernel Headers........." >> ${PRGRSS}/tc.progress && bash scripts/tc-headers.sh      && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "06/38: Adjust Toolchain......." >> ${PRGRSS}/tc.progress && bash scripts/tc-Adjust_TC.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "07/38: Libstdc++ (GCC)........" >> ${PRGRSS}/tc.progress && bash scripts/tc-libstdcxx.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "08/38: TCL...................." >> ${PRGRSS}/tc.progress && bash scripts/tc-tcl.sh          && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "09/38: Expect................." >> ${PRGRSS}/tc.progress && bash scripts/tc-expect.sh       && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "10/38: DejaGnu................" >> ${PRGRSS}/tc.progress && bash scripts/tc-dejagnu.sh      && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "11/38: M4....................." >> ${PRGRSS}/tc.progress && bash scripts/tc-m4.sh           && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "12/38: Ncurses................" >> ${PRGRSS}/tc.progress && bash scripts/tc-ncurses.sh      && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "13/38: Bash..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-bash.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "14/38: Bison.................." >> ${PRGRSS}/tc.progress && bash scripts/tc-bison.sh        && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "15/38: Bzip2.................." >> ${PRGRSS}/tc.progress && bash scripts/tc-bzip2.sh        && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "16/38: Coreutils.............." >> ${PRGRSS}/tc.progress && bash scripts/tc-coreutils.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "17/38: diffutils.............." >> ${PRGRSS}/tc.progress && bash scripts/tc-diffutils.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "18/38: file..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-file.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "19/38: findutils.............." >> ${PRGRSS}/tc.progress && bash scripts/tc-findutils.sh    && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "20/38: Gawk..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-gawk.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "21/38: Gettext-tiny..........." >> ${PRGRSS}/tc.progress && bash scripts/tc-gettext-tiny.sh && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "22/38: Grep..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-grep.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "23/38: Gzip..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-gzip.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "24/38: Make..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-make.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "25/38: Patch.................." >> ${PRGRSS}/tc.progress && bash scripts/tc-patch.sh        && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "26/38: Perl..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-perl.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "27/38: Sed...................." >> ${PRGRSS}/tc.progress && bash scripts/tc-sed.sh          && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "28/38: Tar...................." >> ${PRGRSS}/tc.progress && bash scripts/tc-tar.sh          && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "39/38: Texinfo................" >> ${PRGRSS}/tc.progress && bash scripts/tc-texinfo.sh      && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "30/38: Xz....................." >> ${PRGRSS}/tc.progress && bash scripts/tc-xz.sh           && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "31/38: flex..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-flex.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "32/38: nano..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-nano.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "33/38: Vim...................." >> ${PRGRSS}/tc.progress && bash scripts/tc-vim.sh          && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "34/38: which.................." >> ${PRGRSS}/tc.progress && bash scripts/tc-which.sh        && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "35/38: Tar-1.13..............." >> ${PRGRSS}/tc.progress && bash scripts/tc-tar-1.13.sh     && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "36/38: Util-Linux............." >> ${PRGRSS}/tc.progress && bash scripts/tc-util-linux.sh   && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "37/38: Tree..................." >> ${PRGRSS}/tc.progress && bash scripts/tc-tree.sh         && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
printf "38/38: Pkgtools..............." >> ${PRGRSS}/tc.progress && bash scripts/tc-pkgtools.sh     && printf " [ DONE ]\n" >> ${PRGRSS}/tc.progress && \
echo   "Toolchain Complete!" >> ${PRGRSS}/tc.progress

#! /bin/bash

export PKGNAME="util-linux"
tar xf ${SRC_PKGS}/${PKGNAME}* &&
cd ${PKGNAME}* &&

export CC="${MLFS_TARGET}-gcc"             &&
export CXX="${MLFS_TARGET}-g++"            &&
export AR="${MLFS_TARGET}-ar"              &&
export AS="${MLFS_TARGET}-as"              &&
export RANLIB="${MLFS_TARGET}-ranlib"      &&
export LD="${MLFS_TARGET}-ld"              &&
export STRIP="${MLFS_TARGET}-strip"        &&

echo "Building $PKGNAME..." &&
CFLAGS=" -I/tools/include" \
./configure --build=${MLFS_HOST}  \
            --host=${MLFS_TARGET} \
            --prefix=/tools       \
            --disable-chfn-chsh   \
            --disable-login       \
            --disable-nologin     \
            --disable-su          \
            --disable-setpriv     \
            --disable-runuser     \
            --disable-pylibmount  \
            --disable-static      \
            --without-python      \
            --without-systemd     \
            --disable-hardlink    \
            --without-systemdsystemunitdir \
            --disable-makeinstall-chown &&
make rev flock ${MJ} && 
cp -va rev flock /tools/bin && 
cd ${SRC_ROOT} && rm -rf ${PKGNAME}*

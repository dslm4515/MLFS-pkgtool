#! /bin/bash

export PKGNAME="tar-1.13"
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
cp -vf ../files/config.sub-musl config.sub &&
cp -vf ../files/config.guess-musl config.guess &&
./configure --build=${MLFS_HOST} \
            --host=${MLFS_TARGET} \
            --prefix=/tools \
            --program-suffix="-1.13" \
            --disable-nls &&
make ${MJ} && make install &&
cd ${SRC_ROOT} && rm -rf ${PKGNAME}*

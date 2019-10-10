#Musl-LFS PKGtool

This project provides instructions and build scripts for packages from Musl Linux From Scratch repo, allowing users to more easily keep track of and upgrade packages in the MLFS system using the pkgtools utilities.

Pkgtools is the package management system used by Slackware. It is one of the simplest package systems available. The tools are actully shell scripts requiring only a Bourne- compatible shell and tar version 1.13. This package management system does not provide any dependency tracking, and build scripts are very simple.

This is heavily based on https://github.com/stefanbidi/lfs-pkgtools

Required Pacakges (for pkgtool)

Tar version 1.13 - 1028 KB:
<ul>
 <li>Dowload: https://ftp.gnu.org/gnu/tar/tar-1.13.tar.gz</li>
 <li>MD5 sum: 402a54bdde58dec411ea844b75cf5804</li>
</ul>

Dialog - 295 KB
<ul>
<li>Download: https://mirrors.slackware.com/slackware/slackware-14.2/source/a/dialog/dialog-1.2-20130523.tar.xz</li>
<li>MD5 sum: 2c2b7dd7d1bc6f809ed00739f152648f</li>
</ul>

How to Install in the Temporary System

Temporary system (the toolchain in '/tools') will need to have the folowing installed:
<ul>
 <li>utils-linux</li>
 <li>tar-1.13</li>
 <li>which </li>
</ul>

For Utils-Linux:
```
# After building all packages for /tools as mlfs user, build utils-linux:
# export MLFS_TARGET=$ARCH-mlfs-linux-musl
export CC="${MLFS_TARGET}-gcc"
export CXX="${MLFS_TARGET}-g++"
export AR="${MLFS_TARGET}-ar"
export AS="${MLFS_TARGET}-as"
export RANLIB="${MLFS_TARGET}-ranlib"
export LD="${MLFS_TARGET}-ld"
export STRIP="${MLFS_TARGET}-strip"

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
            --without-systemdsystemunitdir
make && make install
```

For tar-1.13
```
export CC="${MLFS_TARGET}-gcc"
export CXX="${MLFS_TARGET}-g++"
export AR="${MLFS_TARGET}-ar"
export AS="${MLFS_TARGET}-as"
export RANLIB="${MLFS_TARGET}-ranlib"
export LD="${MLFS_TARGET}-ld"
export STRIP="${MLFS_TARGET}-strip"

/configure --build=${MLFS_HOST} \
            --host=${MLFS_TARGET} \
            --prefix=/tools \
            --disable-nls
make && install -m0755 src/tar /tools/bin/tar-1.13
```

For which
```
export CC="${MLFS_TARGET}-gcc"
export CXX="${MLFS_TARGET}-g++"
export AR="${MLFS_TARGET}-ar"
export AS="${MLFS_TARGET}-as"
export RANLIB="${MLFS_TARGET}-ranlib"
export LD="${MLFS_TARGET}-ld"
export STRIP="${MLFS_TARGET}-strip"

./configure --prefix=/tools
make && make install
```

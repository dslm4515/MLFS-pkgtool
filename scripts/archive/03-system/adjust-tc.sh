#! /bin/bash

case $(uname -m) in
  x86_64) export MLFS_TARGET="x86_64-mlfs-linux-musl"
          ;;
  i686)   export MLFS_TARGET="i686-mlfs-linux-musl"
          ;;
  armv7l) export MLFS_TARGET="armv7l-mlfs-linux-musleabihf"
          ;;
  armv6l) export MLFS_TARGET="armv6l-mlfs-linux-musleabihf"
          ;;
esac &&

echo "[ FS - Adjust TC ] Re-adjusting Linker..." &&
mv -v /tools/bin/{ld,ld-old} &&
mv -v /tools/${MLFS_TARGET}/bin/{ld,ld-old} &&
mv -v /tools/bin/{ld-new,ld} &&
ln -sv /tools/bin/ld /tools/${MLFS_TARGET}/bin/ld &&

echo "[ FS - Adjust TC ] Creating new GCC specs for TC ..." &&
export SPECFILE=`dirname $(gcc -print-libgcc-file-name)`/specs &&
gcc -dumpspecs | sed -e 's@/tools@@g'                   \
    -e '/\*startfile_prefix_spec:/{n;s@.*@/usr/lib/ @}' \
    -e '/\*cpp:/{n;s@$@ -isystem /usr/include@}' >  tempspecfile &&
mv -vf tempspecfile $SPECFILE &&
unset SPECFILE &&

echo "[ FS - Adjust TC ] SANITY CHECK:" &&
echo 'int main(){}' > dummy.c &&
cc dummy.c -v -Wl,--verbose &> dummy.log &&

echo "[ FS - Adjust TC ] SANITY CHECK :: Current interpreter:" &&
readelf -l a.out | grep ': /lib' &&

echo "[ FS - Adjust TC ] SANITY CHECK :: Start files:" &&
grep -o '/usr/lib.*/crt[1in].*succeeded' dummy.log &&

echo "[ FS - Adjust TC ] SANITY CHECK :: Header Files:" &&
grep -B1 '^ /usr/include' dummy.log &&

echo "[ FS - Adjust TC ] SANITY CHECK :: Search paths for linker:" &&
grep 'SEARCH.*/usr/lib' dummy.log |sed 's|; |\n|g' &&

echo "[ FS - Adjust TC ] removing test files..." &&
rm -v dummy.c a.out dummy.log

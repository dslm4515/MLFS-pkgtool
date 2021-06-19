#! /bin/bash

echo "Packing up tar 1.13" &&
tar Jcf /tmp/tar-1.13.tar.xz tar-1.13

echo "Packing up Bash Startup scripts"
tar Jcpf /tmp/mlfs-bash_startup_scripts-1.00.tar.xz \
         mlfs-bash_startup_scripts-1.00

echo "packing up bootscripts" &&
tar Jcpf /tmp/MLFS-S6-Bootscripts.tar.xz \
         MLFS-S6-Bootscripts

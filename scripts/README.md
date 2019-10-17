# Build Scripts

These scripts sem-automate building packages in the Musl-LFS and to be used while going through building with [Musl-LFS](https://github.com/dslm4515/Musl-LFS).

## Directory tree

<ul>
   <li>01-cross: Builds the small cross-toolchain to build toolchain.</li>
   <li>02-tools: Builds toolchain to build the final system.</li>
   <li>03-system: Builds the packages with pkgtools</li>
</ul>

### 01-cross

These build scripts assume that there is a dedicated directory or mounted partition for final system build. A `mlfs` user should be created on host system with environmental variables set... as described in `000-Preparation` doc from Musl-LFS. Cross-toolchain will be built in `/mnt/mlfs/cross-tools` then linked to root of host as `/cross-tools`. Build scripts are prefixed with the number to desginate build order. An example for how to use these scripts:
```
# Build headers first:
tar xf linux-5.2.3.tar.xz && cd linux-5.2.3
sh ../scripts/01-cross/00-headers
cd .. && rm -rf linux-5.2.3
```

These scripts cover docs 000 to 006 in Musl-LFS.

### 02-tools

These scripts will build the toolchain with `/cross-tools` to build the final system. Toolchain will be built in `/mnt/mlfs/tools` then linked to host's root as `/tools`. Scripts will assume cross-tools chain was built by above scripts. It is recommended to use the same sources as the cross-tools, as the package `file` must be compiled with the same version. additionally, the following packages will be built:
<ul>
  <li>tar-1.13</li>
  <li>which</li>
  <li>utils-linux</li>
</ul>

Each script is prefixed with number of build order. An example of usage of scripts:
```
tar xf musl-1.1.23.tar.xz && cd musl-1.1.23
sh ../scripts/02-tools/00-Musl
cd .. && rm -rf musl-1.1.23
```

These scripts cover docs 006 to 039 of Musl-LFS with builds for `tar-1.13`, `which`, and `utils-linux`.

### 03-system

Scripts in here will build the .txz packages that are then installed on the final system. Again, scripts assume `/tools` is built and present and scripts are run under a chroot. Package build script configuration can be changed via `00-pkgsystem.config` which should be either copied or linked to `/tools/etc`. Each pacakge will need to be built then installed in the order described by Musl-LFS.

Script usage:
```
sh <path-of-scripts>/<package_name>.build <package-source.tar.xz> <number of make jobs>
``` 

These scripts cover docs 046 to 126 of Musl-LFS.

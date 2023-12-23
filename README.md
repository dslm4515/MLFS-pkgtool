# Musl-LFS PKGtool

This project provides instructions and build scripts for packages from [Musl Linux From Scratch](https://github.com/dslm4515/Musl-LFS) and [Clang-built Musl Linux From Scratch](https://github.com/dslm4515/CMLFS) repos, allowing users to more easily keep track of and upgrade packages in the MLFS/CMLFS system using the pkgtools utilities.

Pkgtools is the package management system used by Slackware. It is one of the simplest package systems available. But this repo drops the original pkgtools in favor of [spkg](https://github.com/gapan/spkg). This package management system does not provide any dependency tracking, and build scripts are very simple.

Think of this as Musl-LFS with very basic packagement. There is no dependencies check when removeing or installing packages.

### Disclaimer: 
The original goal of this repo was to backup my work to github, in case of data lost of local copies. This repo was not developed to produce a distribution with the same scalability of popular "distros" like Alpine Linux or Void Linux.

### Required Packages/Utilities (for spkg)

<ul>
 <li> Judy</li>
 <li> glib</li>
 <li> popt</li>
 <li> zlib</li>
 <li> dash/bash - for the makepkg script </li>
</ul>

### Optional Runtime Packages/Utilities (for spkg)
<ul>
 <li> tree (for visuallzing unpacked packages)</li>
</ul>

## Goals
<ul>
 <li> [ ] Dependency tracking for packages </li>
 <li> [ ] GUI for installing/removing/upgrading packages </li>
 <li> [ ] Adjust scripts for better POSIX compliance </li>
 <li> [x] Include script(s) to deploy built packages to install on another machiine </li>
 <li> [ ] Build a small chroot toolchain for deploying built packages for a new system</li>
 <li> [ ] Add script to strip packages of debug symbols to reduce size </li> 
</ul>

## Issues

None yet.

## Layout

<ul>
 <li>CMLFS-based - Instructions for building CMLFS with spkg</li>
 <li>MLFS-based - Instructions for building MLFS with spkg</li>
 <li>extra - Helpful scripts to mount, chroot, umount, and backup a CMLFS/MLFS build.</li>
 <li>patches - Patches imported from Musl-LFS to be used to build packages </li>
 <li>files - Files that will be needed during the build </li>
 <li>sources.list - List of sources to download </li>
 <li>sources.md5 - Md5sums of sources downloaded </li>
</ul>

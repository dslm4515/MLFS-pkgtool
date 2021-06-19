# Musl-LFS PKGtool

This project provides instructions and build scripts for packages from [Musl Linux From Scratch](https://github.com/dslm4515/Musl-LFS) repo, allowing users to more easily keep track of and upgrade packages in the MLFS system using the pkgtools utilities.

Pkgtools is the package management system used by Slackware. It is one of the simplest package systems available. The tools are actully shell scripts requiring only a Bourne- compatible shell, tar version 1.13, and a few binaries from Util-Linux. This package management system does not provide any dependency tracking, and build scripts are very simple.

Think of this as Musl-LFS with very basic packagement. There is no dependencies check when removeing or installing packages.

Required Packages/Utilities (for pkgtools)

<ul>
 <li> Tar 1.13</li>
 <li> Which </li>
 <li> Rev & Flock (Util-Linux)</li>
</ul>

Optional Runtime Packages/Utilities (for pkgtools)
<ul>
 <li> tree (required by pkgdiff)</li>
 <li> du (Coreutils) </li>
</ul>

## Goals
<ul>
 <li> [ ] Dependency tracking for packages </li>
 <li> [ ] GUI for installing/removing/upgrading packages </li>
 <li> [ ] Adjust scripts for better POSIX compliance </li>
 <li> [ ] Include script to deploy built packages to install on another machiine </li>

## Issues

<ul>
 <li> Built packages cannot be used to install a 'fresh' copy of MLFS. For now, create a backup of built system. When doing a 'fresh' install, use built toolchain to enter a chroot and unpack backup. There an simple script to created a 'spanned' backup of a built MLFS rootfs in `extra`. A spanned backup can be used if a single backup archive is too big for the filesystem it is stored on... such as a unspanned backup that is bigger than 3 Gb, which will not fit on a flash drive formmated with vfat/FAT32. </li>
</ul>

## Layout

<ul>
 <li>contrib - Contains additional sources that maybe hard to find and submodules </li>
 <li>doc - Build instructions to build a MLFS installation with pkgtools as package management </li>
 <li>extra - Helpful scripts to mount, chroot, umount, and backup a MLFS build.</li>
 <li>patches - Patches imported from Musl-LFS to be used to build packages </li>
 <li>files - Files that will be needed during the build </li>
 <li>scripts - Auto-building scripts for cross-tools and tools toolchains to speed up build time
 <li>sources.list - List of sources to download </li>
 <li>sources.md5 - Md5sums of sources downloaded </li>
</li>

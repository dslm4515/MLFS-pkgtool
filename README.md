# Musl-LFS PKGtool

This project provides instructions and build scripts for packages from Musl Linux From Scratch repo, allowing users to more easily keep track of and upgrade packages in the MLFS system using the pkgtools utilities.

Pkgtools is the package management system used by Slackware. It is one of the simplest package systems available. The tools are actully shell scripts requiring only a Bourne- compatible shell, tar version 1.13, and a few binaries from Util-Linux. This package management system does not provide any dependency tracking, and build scripts are very simple.

Think of this as Musl-LFS with very basic packagement.

Required Packages/Utilities (for pkgtools)

<ul>
 <li> Tar 1.13</li>
 <li> Which </li>
 <li> Rev & Flock (Util-Linux)</li>
</ul>

Optional Runtime Packages/Utilities (for pkgtools)
<ul>
 <li> Tree </li>
 <li> Du (Coreutils) <li>
</ul>

## Goals
<ul>
 <li> [ ] Dependency tracking for packages
 <li> [ ] GUI for installing/removing/upgrading packages
</ul>

## Layout

<ul>
 <li>contrib - Contains additional sources that maybe hard to find </li>
 <li>doc - Build instructions to build a MLFS installation with pkgtools as package management </li>
 <li>extra - Helpful scripts to mount, chroot, and umount a MLFS build.</li>
 <li>patches - Patches imported from Musl-LFS to be used to build packages </li>
 <li>files - Files that will be needed during the build </li>
 <li>sources.list - List of sources to download </li>
 <li>sources.md5 - Md5sums of sources downloaded </li>
</li>

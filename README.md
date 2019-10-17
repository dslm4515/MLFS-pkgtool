# Musl-LFS PKGtool

This project provides instructions and build scripts for packages from Musl Linux From Scratch repo, allowing users to more easily keep track of and upgrade packages in the MLFS system using the pkgtools utilities.

Pkgtools is the package management system used by Slackware. It is one of the simplest package systems available. The tools are actully shell scripts requiring only a Bourne- compatible shell and tar version 1.13. This package management system does not provide any dependency tracking, and build scripts are very simple.

This is based on https://github.com/stefanbidi/lfs-pkgtools

## Required Pacakges (for pkgtool)

### Tar version 1.13 - 1028 KB:
<ul>
 <li>Dowload: https://ftp.gnu.org/gnu/tar/tar-1.13.tar.gz</li>
 <li>MD5 sum: 402a54bdde58dec411ea844b75cf5804</li>
</ul>

### Dialog - 295 KB
<ul>
<li>Download: https://mirrors.slackware.com/slackware/slackware-14.2/source/a/dialog/dialog-1.2-20130523.tar.xz</li>
<li>MD5 sum: 2c2b7dd7d1bc6f809ed00739f152648f</li>
</ul>

## How to Install in the Temporary System

Temporary system (the toolchain in '/tools') will need to have the folowing installed:
<ul>
 <li>utils-linux</li>
 <li>tar-1.13</li>
 <li>which </li>
</ul>

Instructions for building the toolchain will include the above.

## Structure

The build system assumes the build layout. Layout can differ, but will require editing `00-pkgsystem.config`

<ul>
<li> /sources - Source tarballs kept here </li>
<li> /sources/patches - Patches for sources </li> 
<li> /sources/BUILD - Build directory when 'fake installing' packages </li>
<li> /sources/PKG - Directory where packages (.txz) are produced </li>
<li> /sources/scripts - Build scripts to build cross-tools, tools, and final system</li>
<li> /sources/descs - Slackware descriptions to add for each package </li>
<li> /tools/etc/00-pkgsystem.config - Build scripts will look for this script. Allows to change build layout of package build system</li>
</ul>

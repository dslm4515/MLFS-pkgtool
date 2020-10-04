# Musl-LFS PKGtool

This project provides instructions and build scripts for packages from Musl Linux From Scratch repo, allowing users to more easily keep track of and upgrade packages in the MLFS system using the pkgtools utilities.

Pkgtools is the package management system used by Slackware. It is one of the simplest package systems available. The tools are actully shell scripts requiring only a Bourne- compatible shell and tar version 1.13. This package management system does not provide any dependency tracking, and build scripts are very simple.

## Required Packages (for pkgtool)

### Tar version 1.13 - 1028 KB:
<ul>
 <li>Dowload: https://ftp.gnu.org/gnu/tar/tar-1.13.tar.gz</li>
 <li>MD5: 402a54bdde58dec411ea844b75cf5804</li>
</ul>

## Which
<ul>
  <li>Download: https://ftp.gnu.org/gnu/which/which-2.21.tar.gz </li>
  <li>MD5: 097ff1a324ae02e0a3b0369f07a7544a</li>
</ul>

## Utils-Linux
<ul>
  <li>Only rev and flock needed.</li>
  <li>Download: https://www.kernel.org/pub/linux/utils/util-linux/v2.36/util-linux-2.36.tar.xz
</li>
  <li>MD5: fe7c0f7e439f08970e462c9d44599903</li>
</ul>

## Structure

The build system assumes the build layout. Layout can differ, but will require editing `00-pkgsystem.config`

<ul>
<li> /sources - Source tarballs kept here </li>
<li> /sources/patches - Patches for sources </li> 
<li> /BUILD - Build directory when 'fake installing' packages </li>
<li> /PKG - Directory where packages (.txz) are produced </li>
<li> /sources/scripts - Build scripts to build cross-tools, tools, and final system</li>
<li> /sources/descs - Slackware descriptions to add for each package </li>
<li> /tools/etc/00-pkgsystem.config - Build scripts will look for this script. Allows to change build layout of package build system</li>
</ul>

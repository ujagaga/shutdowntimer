#!/bin/sh

pkgname="shutdowntimer-3.0"
cd "$(dirname "$0")"

# remove any leftovers from previous build
rm -f ./*.deb

# create necessary folders (in case they do not exist) for building the debian package
mkdir $pkgname/usr
mkdir $pkgname/usr/bin
mkdir $pkgname/usr/share
mkdir $pkgname/usr/share/man
# man1 contains user commands by convention
mkdir $pkgname/usr/share/man/man1

# copy resources to build locations
cp -fr ../shutdowntimer $pkgname/usr/bin/
cp -fr ../sound.mp3 $pkgname/usr/bin/
cp -fr ../man/shutdowntimer $pkgname/usr/share/man/man1/shutdowntimer.1

# gzip the man page
gzip -f $pkgname/usr/share/man/man1/shutdowntimer.1

# set up necessary folder permissions
chmod -R 755 $pkgname/DEBIAN/

# build the deb package
dpkg-deb --build ./$pkgname

# rename the package
mv $pkgname.deb install-$pkgname.deb


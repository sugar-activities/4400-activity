#!/bin/bash
#pwd
ddir=$HOME/.shoes/federales
#echo $ddir
mkdir -p $ddir
cp -r * $ddir/
sed -e "s@{hdir}@$HOME@" <Shoes.desktop.tmpl >Shoes.desktop
xdg-desktop-menu install --novendor Shoes.desktop
echo "Shoes has been copied to $ddir. and menus created"
echo "If you don't see Shoes in the menu, logout and login"

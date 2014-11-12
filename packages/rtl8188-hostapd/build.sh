#!/bin/bash

wget https://github.com/jenssegers/RTL8188-hostapd/archive/v1.1.tar.gz
mv v1.1.tar.gz rtl8188-hostapd_1.1.orig.tar.gz
tar xf rtl8188-hostapd_1.1.orig.tar.gz
mv RTL8188-hostapd-1.1/ rtl8188-hostapd-1.1/
pushd rtl8188-hostapd-1.1
cp -a ../debian .
debuild -us -uc
popd

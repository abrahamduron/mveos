#!/bin/bash
#================
# FILE          : config.sh
#----------------
# PROJECT       : OpenSuSE KIWI Image System
# COPYRIGHT     : (c) 2006 SUSE LINUX Products GmbH. All rights reserved
#               :
# AUTHOR        : Marcus Schaefer <ms@suse.de>
#               :
# BELONGS TO    : Operating System images
#               :
# DESCRIPTION   : configuration script for SUSE based
#               : operating systems
#               :
#               :
# STATUS        : BETA
#----------------
#======================================
# Functions...
#--------------------------------------
test -f /.kconfig && . /.kconfig
test -f /.profile && . /.profile

#======================================
# Greeting...
#--------------------------------------
echo "Configure image: [$kiwi_iname]..."

#======================================
# Setup baseproduct link
#--------------------------------------
suseSetupProduct

#======================================
# Activate services
#--------------------------------------
suseInsertService sshd

#======================================
# Setup default target, multi-user
#--------------------------------------
baseSetRunlevel 5

# --> Configuración de <Artwork>
#mkdir -p /usr/share/icons/tdbsuse/
cp -f /mveos_recursos/os/artwork/wallpapers/* /usr/share/wallpapers/openSUSEdefault/contents/images/
# cp -f /root/mveos_recursos/os/artwork/wallpapers/1350x1080.jpg /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/
# cp -f /root/mveos_recursos/os/artwork/wallpapers/1440x1080.jpg /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/
# cp -f /root/mveos_recursos/os/artwork/wallpapers/1600x1200.jpg /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/
# cp -f /root/mveos_recursos/os/artwork/wallpapers/1920x1080.jpg /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/
# cp -f /root/mveos_recursos/os/artwork/wallpapers/1920x1200.jpg /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/
# cp -f /root/mveos_recursos/os/artwork/wallpapers/3840x2400.jpg /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/
# cp -f /root/mveos_recursos/os/artwork/wallpapers/5120x3200.jpg /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/

chmod 644 /usr/share/wallpapers/openSUSEdefault/contents/images/*
# chmod 644 /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/1350x1080.jpg
# chmod 644 /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/1440x1080.jpg
# chmod 644 /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/1600x1200.jpg
# chmod 644 /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/1920x1080.jpg
# chmod 644 /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/1920x1200.jpg
# chmod 644 /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/3840x2400.jpg
# chmod 644 /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/5120x3200.jpg

chown root:root /usr/share/wallpapers/openSUSEdefault/contents/images/*
# chown root:root /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/1350x1080.jpg
# chown root:root /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/1440x1080.jpg
# chown root:root /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/1600x1200.jpg
# chown root:root /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/1920x1080.jpg
# chown root:root /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/1920x1200.jpg
# chown root:root /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/3840x2400.jpg
# chown root:root /build/image-root/usr/share/wallpapers/openSUSEdefault/contents/images/5120x3200.jpg


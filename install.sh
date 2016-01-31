#!/bin/bash

# exit script if return code != 0
set -e

# define pacman packages
pacman_packages="emby"

# install pre-reqs
pacman -Syu --ignore filesystem --noconfirm
pacman -S --needed $pacman_packages --noconfirm

# set permissions
chown -R nobody:users /etc/conf.d/emby-server /usr/lib/emby-server /usr/bin/emby-server
chmod -R 775 /etc/conf.d/emby-server /usr/lib/emby-server /usr/bin/emby-server

# cleanup
yes|pacman -Scc
rm -rf /usr/share/locale/*
rm -rf /usr/share/man/*
rm -rf /tmp/*

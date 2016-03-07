#!/bin/bash

# exit script if return code != 0
set -e

# define pacman packages
# pacman_packages=""

# install pre-reqs
# pacman -S --needed $pacman_packages --noconfirm

# call arch official repo script
source /root/aor.sh

# cleanup
yes|pacman -Scc
rm -rf /usr/share/locale/*
rm -rf /usr/share/man/*
rm -rf /tmp/*

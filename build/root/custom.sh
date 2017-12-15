#!/bin/bash

# exit script if return code != 0
set -e

# install dotnet-host (emby reports bug wiuth latest dotnet)
pkg_name="dotnet-host"
pkg_ver="2.0.0-2-x86_64"

# download compiled package(s) from binhex repo
/root/curly.sh -rc 6 -rw 10 -of "/tmp/${pkg_name}-${pkg_ver}.pkg.tar.xz" -url "https://github.com/binhex/arch-packages/raw/master/compiled/${pkg_name}-${pkg_ver}.pkg.tar.xz"
pacman -U "/tmp/${pkg_name}-${pkg_ver}.pkg.tar.xz" --noconfirm

# install dotnet-runtime (emby reports bug wiuth latest dotnet)
pkg_name="dotnet-runtime"
pkg_ver="2.0.0-2-x86_64"

# download compiled package(s) from binhex repo
/root/curly.sh -rc 6 -rw 10 -of "/tmp/${pkg_name}-${pkg_ver}.pkg.tar.xz" -url "https://github.com/binhex/arch-packages/raw/master/compiled/${pkg_name}-${pkg_ver}.pkg.tar.xz"
pacman -U "/tmp/${pkg_name}-${pkg_ver}.pkg.tar.xz" --noconfirm

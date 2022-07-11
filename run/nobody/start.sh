#!/usr/bin/dumb-init /bin/bash

# config below is taken from bash script /usr/bin/emby-server.sh

# set env variables for emby
export PROGRAM_DATA='/config'
export FFMPEG='/usr/bin/ffmpeg'
export FFPROBE='/usr/bin/ffprobe'
export FFDETECT='/usr/bin/ffdetect-emby'
export LIBVA_DRIVERS_PATH='/usr/lib/dri'

# run emby-server
exec '/usr/bin/emby-server'

#!/bin/sh

# config below is taken from bash script /usr/bin/emby-server.sh

# set env variables for emby
export MONO='/usr/bin/mono'
export PROGRAM_DATA='/config'
export FFMPEG='/usr/bin/ffmpeg'
export FFPROBE='/uar/bin/ffprobe'

# kick off main process
exec '/usr/bin/emby-server'

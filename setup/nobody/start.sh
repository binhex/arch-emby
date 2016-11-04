#!/bin/bash

# config below is taken from bash script /usr/bin/emby-server.sh

# set env variables for emby
export MONO='/usr/bin/mono'
export PROGRAM_DATA='/config'
export FFMPEG='/usr/bin/ffmpeg'
export FFPROBE='/usr/bin/ffprobe'

# run emby-server
exec '/usr/bin/emby-server'

#!/usr/bin/sh
# planetly.me setup script
# creates dirs and symlinks to 
# a) nginx site config
# b) uwsgi emperor/vassal
# c) systemd unit for uwsgi emperor

DIRECTORY=`dirname $0`
echo $DIRECTORY

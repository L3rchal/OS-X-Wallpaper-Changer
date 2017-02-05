#!/bin/bash
# ------------------------------------------------------------------
# bug with users ... deprecated
DIR=$(dscacheutil -q user | grep -A 3 -B 2 -e uid:\ 5'[0-9][0-9]' | awk -F'dir:' '{print $2}' | ack 'Users')
/usr/bin/osascript $DIR/Pictures/Wallpapers/Time\ of\ Day/wallpaper.scpt

exit 0

#!/bin/sh
# ------------------------------------------------------------------
#DIR=$(dscacheutil -q user | grep -A 3 -B 2 -e uid:\ 5'[0-9][0-9]' | awk -F'dir:' '{print $2}' | ack 'Users')

for user in $(who | awk '{print $1}' | uniq); do
	#/usr/bin/osascript $user/Pictures/Wallpapers/Time\ of\ Day/wallpaper.scpt ; \
	if [ -e "/Users/$user/Desktop" ]; then
		osascript /Users/$user/Pictures/Wallpapers/Time\ of\ Day/wallpaper.scpt ;
		echo $user ;
	fi
done

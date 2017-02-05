#!/usr/local/bin/fish
# ------------------------------------------------------------------
#$(dscacheutil -q user | grep -A 3 -B 2 -e uid:\ 5'[0-9][0-9]' | awk -F'dir:' '{print $2}' | ack 'Users')
for usr in ( who | cut -d \  -f 1 | uniq )
	if test -e /Users/$usr
		/usr/bin/osascript /Users/$usr/Pictures/Wallpapers/Time\ of\ Day/wallpaper.scpt
	end
end

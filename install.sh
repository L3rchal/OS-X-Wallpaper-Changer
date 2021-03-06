#!/bin/sh
################################################################################
# Shell script for installing Wallpaper-Changer on local machine.
#
# Script only works with OSX, while installing use "chmod u+x install.sh" and
#"./install.sh", or type "sh install.sh"in your console/shell/Terminal.
#
# The commands are built to run once, e.g. to copy some directories and files,
# but it's designed to end if some rules are broken on run.
#
################################################################################

# Global variables
LOCAL=/usr/local/bin
TARGET=$HOME/Pictures/Wallpapers
FISHL="/usr/local/bin/fish"
DIR="Time of Day"
SCRIPT="./install/shell/wallpaperchanger.sh"
FISHS="./install/fish/changewall.fish"
PLIST="intall/com.wallpaperchanger.plist"

# Change directory to local Wallpapers if exist
if [ ! -d $TARGET ]; then
	echo "Directory $TARGET does not exist, creating";
	mkdir -p "$TARGET";
fi

# Copying files to local dir
if [ ! -f "$TARGET/wallpaper.scpt" ]; then
	echo "Installing script file";
	cp  -R "./$DIR" "$TARGET";
	cp "./wallpaper.scpt" "$TARGET";
else
	echo "Script file is already installed";
fi

# Check for fish
if [ -f $FISHL ] && [ -f $LOCAL ]; then
	echo "You have fish installed, installing fish script"
	cp -R "$FISHS" "$LOCAL"
	chmod a+x "$LOCAL/$FISHS";
elif [ ! -f "$LOCAL/$SCRIPT" ]; then
# Install bash script for changing wallpaper
	echo "Intalling shell script"
		if [ -d $LOCAL ]; then
			cp "./config/$SCRIPT" "$LOCAL/$SCRIPT";
			chmod a+x "$LOCAL/$SCRIPT";
		else
			echo "Error $LOCAL not found ending installation";
			exit 1;
		fi
else
	echo "Error during installing script"
	exit 1;
fi

# Install check
while true; do
	if launchctl list | grep 'com.wallpaperchanger' -q; then
		echo "Installation successfull";
		break;
	else
		# Installing daemon plist
		sudo cp "./config/$PLIST" "/Library/LaunchDaemons/";
		sleep 1;
		# Load plist
		sudo launchctl load -w /Library/LaunchDaemons/$PLIST;
	fi
done


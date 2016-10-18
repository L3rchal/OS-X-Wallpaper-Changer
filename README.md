OS-X-Wallpaper-Changer
======================

Applescript for changing the Mac OS X desktop picture based on the time of day

- Philip Hutchison, April 2013
- http://pipwerks.com
- MIT license http://pipwerks.mit-license.org/

##How to install

Use `sh install.sh`
or
`chmod a+x install.sh` & `./install.sh`

Script for installation, works only for OSX.
##What it does
This is an AppleScript that changes your Mac's desktop picture based on the time of day. The day is split into six 'periods':

- Morning Early (00:01 - 7:00)
- Morning Normal (7:01 - 10:00)
- Morning Late (10:01 - 13:00)
- Afternoon Early (13:01 - 15:00)
- Afternoon Late (15:01 - 18:00)
- Evening Early (18:01 - 21:00)
- Evening Late (21:01 - 00:00)

Each period has a corresponding folder, which is meant to store images that evoke the period in question. For example, you could have a picture of a sunset in the "Evening Early" folder, or a picture of the moon in the "Evening Late" folder.

    /Users/YOUR_USER_NAME/Pictures/Wallpapers/Time of Day/Evening Early/sunset.jpg
    /Users/YOUR_USER_NAME/Pictures/Wallpapers/Time of Day/Evening Late/moon.jpg

**The script will randomly select an image from the corresponding folder.** The image can be in any supported file type, including JPG, GIF and PNG images.

##How to use it

###Folder structure
If you choose to use the default settings, all you need to do is create folders in your `Pictures` folder that correspond to the following sample paths:

- `~/Pictures/Wallpapers/Time of Day/Morning Early/`
- `~/Pictures/Wallpapers/Time of Day/Morning Normal/`
- `~/Pictures/Wallpapers/Time of Day/Morning Late/`
- `~/Pictures/Wallpapers/Time of Day/Afternoon Early/`
- `~/Pictures/Wallpapers/Time of Day/Afternoon Late/`
- `~/Pictures/Wallpapers/Time of Day/Evening Early/`
- `~/Pictures/Wallpapers/Time of Day/Evening Late/`

###Images
It's recommended that you have one image per specific directory so your background image does not randomly changes every 3 minutes (if you don't want to)
Recommended images sites: [DevianArt](http://deviantart.com), [Pixiv](http://www.pixiv.net), Others.

###Multiple monitors
The script includes support for multiple monitors. By default, it will display the same image on all monitors. If you prefer to set a unique image on each monitor, set the `useSamePictureAcrossDisplays` variable to `false`. 

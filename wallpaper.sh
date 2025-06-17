#!/usr/bin/env bash

# select a random wallpaper
NEW_WP=$(ls $HOME/Images/Wallpapers | shuf -n 1)

# full path to the wallpaper
WALLPAPER="$HOME/Images/Wallpapers/$NEW_WP"

# path to the hyprpaper configuration file
HYPRPAPER_CONF="$HOME/.config/hypr/hyprpaper.conf"

# clear hyprpaper config file
echo " " > $HYPRPAPER_CONF

# write new content to hyprpaper.conf
echo "preload = $WALLPAPER" >> $HYPRPAPER_CONF
echo "wallpaper = eDP-1,$WALLPAPER" >> $HYPRPAPER_CONF
echo "splash = false" >> $HYPRPAPER_CONF

# restart hyprpaper
killall hyprpaper
hyprpaper &

#!/bin/bash

directory=~/Pictures/Wallpapers
monitor=`hyprctl monitors | rg Monitor | awk '{print $2}'`

if [ -d "$directory" ]; then

    random_background=$(ls $directory/*.png | shuf -n 1)

    echo $random_background

    hyprctl hyprpaper unload all
    hyprctl hyprpaper preload $random_background
    hyprctl hyprpaper wallpaper "$monitor, $random_background"

fi

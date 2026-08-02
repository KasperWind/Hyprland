#!/bin/bash

directory=/home/kasperw/Pictures/Wallpapers
monitor=`hyprctl monitors | rg Monitor | awk '{print $2}'`

if [ -d "$directory" ]; then

    random_background=$(ls $directory/*.png | shuf -n 1)

    hyprctl hyprpaper wallpaper "$monitor, $random_background"

fi

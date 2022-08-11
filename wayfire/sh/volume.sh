#!/bin/bash

icon=/usr/share/icons/Flatery-Dark/panel/24 

if [[ $1 == "up" ]]; then
    amixer -q set Master 5%+ unmute
    icon=$icon/audio-volume-high.svg
elif [[ $1 == "down" ]]; then
    amixer -q set Master 5%- unmute
    icon=$icon/audio-volume-low.svg
elif [[ $1 == "toggle" ]]; then
    amixer -q set Master toggle

    if [[ $(amixer sget Master | grep % | grep off) != "" ]]; then
        icon=$icon/audio-volume-muted.svg
    else
        icon=$icon/audio-volume-high.svg
    fi
fi

value=$(awk -F"[][%]" '/dB/ { print $2 }' <(amixer sget Master))

notify-send -u low -h int:value:$value -i "$icon" Volume

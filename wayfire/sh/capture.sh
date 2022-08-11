#!/bin/bash

icon=/usr/share/icons/Flatery-Dark/panel/24

if [[ $1 == "up" ]]; then
    amixer -q set Capture 5%+ unmute
    icon=$icon/mic-volume-high.svg
elif [[ $1 == "down" ]]; then
    amixer -q set Capture 5%- unmute
    icon=$icon/mic-volume-low.svg
elif [[ $1 == "toggle" ]]; then
    amixer -q set Capture toggle

    if [[ $(amixer sget Capture | grep % | grep off) != "" ]]; then
        icon=$icon/mic-volume-muted.svg
    else
        icon=$icon/mic-volume-high.svg
    fi
fi

value=$(awk -F"[][%]" '/dB/ { print $2 }' <(amixer sget Capture) | head -1)

notify-send -u low -h int:value:$value -i "$icon" Microphone

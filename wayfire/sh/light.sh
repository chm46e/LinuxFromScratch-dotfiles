#!/bin/bash

if [[ $1 == "up" ]]; then
    light -A 5
elif [[ $1 == "down" ]]; then
    light -U 5
elif [[ $1 == "reset" ]]; then
	light -S 70
fi

value=$(light | awk '{printf("%.f",$1)}')

notify-send -u low -i /usr/share/icons/Flatery-Dark/apps/24/brightnesssettings.svg -h int:value:$value "Brightness"

#!/bin/bash

if [[ $1 == "volume" ]]; then
	echo $(amixer sget Master | grep Mono: | awk -F'[][]' '{ print $2 }')' '
elif [[ $1 == "volmute" ]]; then
	if [[ $(amixer get Master | tail -2 | grep -c '\[on\]') == 0 ]]; then
		echo off
	else
		echo on
	fi
elif [[ $1 == "capture" ]]; then
	echo $(amixer sget Capture | grep Left: | awk -F'[][]' '{ print $2 }')' '	
elif [[ $1 == "capmute" ]]; then
	if [[ $(amixer get Capture -M | tail -2 | grep -c '\[on\]') == 0 ]]; then
		echo off
	else
		echo on
	fi
elif [[ $1 == "light" ]]; then
	light | awk '{printf("%.f",$1)}'
fi

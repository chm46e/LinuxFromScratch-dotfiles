#!/bin/bash

if [[ $1 == "os" ]]; then
	echo "LFS 11.1.multilib"
elif [[ $1 == "kernel" ]]; then
	uname -r
elif [[ $1 == "system" ]]; then
	echo "HP 15-cw1017no"
elif [[ $1 == "uptime" ]]; then
	uptime -p | sed 's/\s*up //; s/\s*days/d/; s/\s*hours/h/; s/\s*minutes/m/; s/,//'
elif [[ $1 == "proc" ]]; then
	ps -eo cmd --sort=-%cpu | sed -n $(expr $2 + 1)'p'
elif [[ $1 == "procc" ]]; then
	expr $(ps -e | wc -l) - 2
elif [[ $1 == "cpufreq" ]]; then
	awk '/cpu MHz/{i++}i==1{printf "%.f",$4; exit}' /proc/cpuinfo	
elif [[ $1 == "load" ]]; then
	file=$(cat /proc/loadavg) 
	dlm=''
	if [[ $(echo $file | awk '{print $1-$3}' | cut -b 1) != '-' ]]; then
		dlm='+'
	fi

	echo $(echo $file | cut -d " " -f 1-3) $dlm$(echo $file | awk '{print $1-$3}')
elif [[ $1 == "btrfsperc" ]]; then
	echo $(df -h | grep /dev/nvme0n1p3 | awk '{print $5}')' '
elif [[ $1 == "btrfsgb" ]]; then
	df -h | grep /dev/nvme0n1p3 | awk '{print $3}'
elif [[ $1 == "batproc" ]]; then
	value=$(cat /sys/class/power_supply/BAT0/capacity)
	if [ "$value" -lt "20" ] && [[ $(cat /sys/class/power_supply/BAT0/status | cut -b 1) == "D" ]]; then
		notify-send -u critical "Battery low!"		
	fi
	echo $value
elif [[ $1 == "batstat" ]]; then
	cat /sys/class/power_supply/BAT0/status | cut -b 1
elif [[ $1 == "battime" ]]; then
	upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep time | awk '{print $4 substr($5,1,1)}'	
elif [[ $1 == "diskre" ]]; then
	iostat | grep nvme0n1 | awk '{print $3}'
elif [[ $1 == "diskwr" ]]; then
	iostat | grep nvme0n1 | awk '{print $4}'	
fi

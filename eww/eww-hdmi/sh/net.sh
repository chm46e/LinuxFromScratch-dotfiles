#!/bin/bash

if [[ $1 == "ssid" ]]; then
	nmcli -t -f NAME connection | head -n1
elif [[ $1 == "bssid" ]]; then
	bssid=$(nmcli device wifi list | grep "*" | cut -d ' ' -f 8)
	if [[ -n "$bssid" ]]; then
		printf $bssid
	else
		printf "none"
	fi
elif [[ $1 == "dns" ]]; then
	cat /etc/resolv.conf | cut -c12- | head -n 1	
elif [[ $1 == "lan" ]]; then
	ip addr show | grep 192.168. | awk '{print $2}'
elif [[ $1 == "mac" ]]; then
	ip addr show | grep link/ether | awk '{print $2}' | head -n1
elif [[ $1 == "allportc" ]]; then
	echo $(expr $(netstat -tulnap | wc -l) - 2)' '
elif [[ $1 == "listenportc" ]]; then
	echo $(expr $(netstat -tulnp | wc -l) - 2)
elif [[ $1 == "tcpportc" ]]; then
	echo $(netstat -tulnap | grep tcp | wc -l)' '
elif [[ $1 == "udpportc" ]]; then
	echo $(netstat -tulnap | grep udp | wc -l)
elif [[ $1 == "adbup" || $1 == "nasup" ]]; then
	ip=192.168.1.8
	if [[ $1 == "nasup" ]]; then ip=192.168.1.9; fi

	if [[ -n $(ping $ip -c1 | grep Unreachable) ]]; then
		echo down
	else
		echo up $(ping $ip -c1 | grep time | awk -F 'time=' '{print $2}')
	fi
fi

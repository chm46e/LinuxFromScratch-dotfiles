#!/bin/bash

if [[ $(amixer get Master | tail -2 | grep -c '\[on\]') == 0 ]]; then
	echo off
else
	echo on
fi

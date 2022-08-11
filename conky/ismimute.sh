#!/bin/bash

if [[ $(amixer get Capture -M | tail -2 | grep -c '\[on\]') == 0 ]]; then
	echo off
else
	echo on
fi

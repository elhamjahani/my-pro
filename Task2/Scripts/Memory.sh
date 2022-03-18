#!/bin/bash

if [[ "$1" == "Swap" ]]; then
	if [[ "$2" == "total" ]]; then
		free -m | grep Swap | awk '{print $2}'
	elif [[ "$2" == "used" ]]; then
		free -m | grep Swap | awk '{print $3}'
	elif [[ "$2" == "free" ]]; then
		free -m | grep Swap | awk '{print $4}'
	else
                echo "Use one of { First Input: Swap OR Mem and Second Input total OR used OR free OR shared OR buffCache OR available } "
	fi
elif [[ "$1" == "Mem" ]]; then
	if [[ "$2" == "total" ]]; then
		free -m | grep Mem | awk '{print $2}'
	elif [[ "$2" == "used" ]]; then
		free -m | grep Mem | awk '{print $3}'
	elif [[ "$2" == "free" ]]; then
		free -m | grep Mem | awk '{print $4}'
	elif [[ "$2" == "shared" ]]; then
		free -m | grep Mem | awk '{print $5}'
	elif [[ "$2" == "BuffCache" ]]; then
		free -m | grep Mem | awk '{print $6}'
	elif [[ "$2" == "available" ]]; then
		free -m | grep Mem | awk '{print $7}'
	else
		echo "Use one of { First Input: Swap OR Mem and Second Input total OR used OR free OR shared OR buffCache OR available } "
	fi
else
	echo "Use one of { First Input: Swap OR Mem and Second Input total OR used OR free OR shared OR buffCache OR available } "
fi

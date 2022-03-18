#!/bin/bash

if [[ "$1" == "1m" ]]; then
	top -b -n 1 | head -n1 | awk '{print $12}' | tr -d ','
elif [[ "$1" == "5m" ]]; then
	top -b -n 1 | head -n1 | awk '{print $13}' | tr -d ','
elif [[ "$1" == "15m" ]]; then
        top -b -n 1 | head -n1 | awk '{print $14}' | tr -d ','
else
	echo "Use one of { 1m , 5m , 15m } "
fi

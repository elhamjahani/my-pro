#!/bin/bash

for i in `ifconfig | grep mtu | cut -d: -f1`
do
	if [[ "$1" == "input" ]]; then
		echo "$i: `ifconfig $i | grep  "RX pa" | grep -o -P '(\().*(\))' | tr -d '(,)'`"
		
	elif [[ "$1" == "output" ]]; then
		echo "$i: `ifconfig $i | grep  "TX pa" | grep -o -P '(\().*(\))' | tr -d '(,)'`"
	else
		echo "Use one of { input, output } "
	fi
done

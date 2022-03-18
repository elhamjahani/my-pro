#!/bin/bash

if [[ "$1" == "TIME_WAIT" ]]; then
	netstat -an | grep "TIME_WAIT" | wc -l
elif [[ "$1" == "ESTABLISHED" ]]; then
	netstat -an | grep "ESTABLISHED" | wc -l
elif [[ "$1" == "LISTEN" ]]; then
	netstat -anltu | grep "LISTEN" | wc -l
elif [[ "$1" == "CLOSE_WAIT" ]]; then
	netstat -an | grep "CLOSE_WAIT" | wc -l
elif [[ "$1" == "FIN_WAIT2" ]]; then
	netstat -an | grep "FIN_WAIT2" | wc -l
elif [[ "$1" == "FIN_WAIT1" ]]; then
	netstat -an | grep "FIN_WAIT1" | wc -l
else
	echo "Use one of { FIN_WAIT2, FIN_WAIT1, TIME_WAIT, ESTABLISHED, LISTEN, CLOSE_WAIT } "
fi

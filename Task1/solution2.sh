#!/bin/bash

for (( i=1;i<=10;i++ )) 
	do 
		echo $RANDOM $i
	done | sort | cut -d" " -f2

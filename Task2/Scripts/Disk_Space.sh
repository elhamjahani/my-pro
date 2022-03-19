#!/bin/bash




for i in `df -h | grep -v tmpfs | grep -vE "shm|Filesystem|overlay" | awk '{print $1}' | cut -d"/" -f3`
do
	if [[ "$1" == "$i" ]]; then
		if [[ "$2" == "total" ]]; then
			df -h | grep $1 | awk '{print $2}'
		elif [[ "$2" == "used" ]]; then
			df -h | grep $1 | awk '{print $3}'
		elif [[ "$2" == "free" ]]; then
			df -h | grep $1 | awk '{print $4}'
		else
			echo "for first codition use $(for i in `df -h | grep -v tmpfs | grep -vE "shm|Filesystem|overlay" | awk '{print $1}' | cut -d"/" -f3`; do echo $i | tr '\n' ','; done) and for second condition use total , used , free"
		fi
	fi
done

if [[ "$1" == "-h" ]]; then
			echo "for first codition use $(for i in `df -h | grep -v tmpfs | grep -vE "shm|Filesystem|overlay" | awk '{print $1}' | cut -d"/" -f3`; do echo $i | tr '\n' ','; done) and for second condition use total , used , free"
fi

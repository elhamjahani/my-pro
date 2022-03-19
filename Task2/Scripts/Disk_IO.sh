#!/bin/bash




for i in `df -h | grep -v tmpfs | grep -vE "shm|Filesystem|overlay" | awk '{print $1}' | cut -d"/" -f3`
do
	if [[ "$1" == "$i" ]]; then
		if [[ "$2" == "read" ]]; then
			iostat -p $i | grep $i | awk '{print $3}'
		elif [[ "$2" == "write" ]]; then
                        iostat -p $i | grep $i | awk '{print $4}'
		else
			echo "for first codition use $(for i in `df -h | grep -v tmpfs | grep -vE "shm|Filesystem|overlay" | awk '{print $1}' | cut -d"/" -f3`; do echo $i | tr '\n' ','; done) and for second condition use read , write"
		fi
	fi
done

if [[ "$1" == "-h" ]]; then
	echo "for first codition use $(for i in `df -h | grep -v tmpfs | grep -vE "shm|Filesystem|overlay" | awk '{print $1}' | cut -d"/" -f3`; do echo $i | tr '\n' ','; done) and for second condition use read , write"
fi

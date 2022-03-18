#!/bin/bash

if [[ "$1" == "usr" || "$1" == "idle" || "$1" == "nice" || "$1" == "sys" || "$1" == "iowait" || "$1" == "irq" || "$1" == "soft" || "$1" == "steal" || "$1" == "guest" || "$1" == "gnice" ]]; then

	mpstat | tail -n2 > /tmp/mpstat.result
	awk -v header="%$1" '
	BEGIN { FS=" "; c=0 }
	NR == 1 { for (i=1;i<=NF;i++) { if ($i==header) { c=i }} }
	NR > 1 && c>0 { print $c }' /tmp/mpstat.result

else
	echo "Use one of { usr ,nice ,sys ,iowait ,irq ,soft ,steal ,guest ,gnice and idle } "
fi

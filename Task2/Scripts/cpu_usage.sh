#!/bin/bash

mpstat | tail -n2 > /tmp/mpstat.result
awk -v header="%$1" '
BEGIN { FS=" "; c=0 }
NR == 1 { for (i=1;i<=NF;i++) { if ($i==header) { c=i }} }
NR > 1 && c>0 { print $c }' /tmp/mpstat.result

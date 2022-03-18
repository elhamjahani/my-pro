# Memory

In operating System we have some commands for checking memory usage.
for example:

```
bash> free -m
              total        used        free      shared  buff/cache   available
Mem:          15870        8704         809        2580        6356        4336
Swap:          2047         323        1724
```
```
bash> cat /proc/meminfo
```
```
bash> vmstat 
procs -----------memory---------- ---swap-- -----io---- -system-- ------cpu-----
 r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us sy id wa st
 1  0 331400 805796 564536 5941508    0    1    14    72   53   17 23  7 70  0  0
```

if you want to monitor this server on command line you can use above commands but if you want to send the result to another monitoring tools ,you can use the script in Task2/Scripts/Memory.sh 

In this script you can enter one of {1m, 5m, 15m} after script name and see the Memory amount.

Copy file Task2/Scripts/Memory.sh to your server and :
```
cd SCRIPT_PATH
bash ./Memory.sh Mem free
bash ./Memory.sh Swap free
```
Also you can put below line in crontab to have a history of these informations:

```
crontab -e
* * * * *  date >> /tmp/mpstat_history.txt && free -m >> /tmp/mpstat_history.txt && echo "________________________________________" >> /tmp/mpstat_history.txt
```

also you can see the history of Cpu usage by sar/atop command (if these tools were installed and configured)

But if you use zabbix monitoring tool, you just need to create host and assign linux OS template (which is the default template of zabbix) to server and its done!
<https://www.zabbix.com/documentation/current/en/manual/config/hosts/host#configuration>

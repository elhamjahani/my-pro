# CPU Usage
In operating System we have some commands for checking cpu usage.
for example:
```
bash> top -b -n 1 | grep Cpu
%Cpu(s):  9.6 us,  4.6 sy,  0.0 ni, 85.8 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
```
```
bash> mpstat
Linux 5.11.0-49-generic (ejahani) 	03/18/2022 	_x86_64_	(12 CPU)
11:17:35 PM  CPU    %usr   %nice    %sys %iowait    %irq   %soft  %steal  %guest  %gnice   %idle
11:17:35 PM  all   24.99    0.02    7.55    0.04    0.00    0.16    0.00    0.00    0.00   67.24
```
If you dont have mpstat command visit page: <https://command-not-found.com/mpstat>

if you want to monitor this server on command line you can use above commands but if you want to send the result to another monitoring tools you can use the script in Task2/Scripts/CPU_Usage.sh

In this script you can enter one of {usr ,nice ,sys ,iowait ,irq ,soft ,steal ,guest ,gnice and idle } after script name and see the percentage of cpu usage for each item.

Copy file Task2/Scripts/CPU_Usage.sh to your server and :
```
cd SCRIPT_PATH
bash ./CPU_Usage.sh idle
```
Also you can put below line in crontab to have a history of these informations:

```
crontab -e
* * * * *  date >> /tmp/mpstat_history.txt && mpstat | tail -n2 >> /tmp/mpstat_history.txt && echo "________________________________________" >> /tmp/mpstat_history.txt
```

also you can see the history of Cpu usage by sar/atop command (if these tools were installed and configured)

But if you use zabbix monitoring tool, you just need to create host and assign linux OS template (which is the default template of zabbix) to server and its done!
<https://www.zabbix.com/documentation/current/en/manual/config/hosts/host#configuration>

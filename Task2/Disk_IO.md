# Disk IO

In operating System we have some commands for checking Disk IO.
for example:

```
bash> iotop
```
```
bash> iostat
```
```
bash> vmstat 
procs -----------memory---------- ---swap-- -----io---- -system-- ------cpu-----
 r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us sy id wa st
 1  0 331400 805796 564536 5941508    0    1    14    72   53   17 23  7 70  0  0
```

if you want to monitor this server on command line you can use above commands but if you want to send the result to another monitoring tools ,you can use the script in Task2/Scripts/Disk_IO.sh 

In this script you can enter one of your disks after script name and also 'read , write' for second condition and see the disk IO amount.


Copy file Task2/Scripts/Disk_IO.sh to your server and :
```
cd SCRIPT_PATH
bash ./Disk_IO.sh -h
```
Also you can put below line in crontab to have a history of these informations:

```
crontab -e
* * * * *  date >> /tmp/IO_history.txt && for i in `df -h | grep -v tmpfs | grep -vE "shm|Filesystem|overlay" | awk '{print $1}' | cut -d"/" -f3` ; do echo "`iostat -p $i | grep $i`" ; done >> /tmp/IO_history.txt && echo "________________________________________" >> /tmp/IO_history.txt
```

also you can see the history of Disk IO usage by sar/atop command (if these tools were installed and configured)

But if you use zabbix monitoring tool, you just need to create host and assign linux OS template (which is the default template of zabbix) to server and its done!
<https://www.zabbix.com/documentation/current/en/manual/config/hosts/host#configuration>

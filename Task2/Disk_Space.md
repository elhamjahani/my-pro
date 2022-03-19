# Disk Space

In operating System we have some commands for checking Disk Space.
for example:

```
bash> df -h
```
```
bash> fdisk -l
```

if you want to monitor this server on command line you can use above commands but if you want to send the result to another monitoring tools ,you can use the script in Task2/Scripts/Disk_Space.sh 

In this script you can enter one of your disks after script name and also 'used , total , free' for second condition and see the disk Space amount.

Copy file Task2/Scripts/Disk_Space.sh to your server and :
```
cd SCRIPT_PATH
bash ./Disk_Space.sh -h
```
Also you can put below line in crontab to have a history of these informations:

```
crontab -e
* * * * *  date >> /tmp/DiskSpace_history.txt && for i in `df -h | grep -v tmpfs | grep -vE "shm|Filesystem|overlay" | awk '{print $1}' | cut -d"/" -f3` ; do df -h | grep $i ; done >> /tmp/DiskSpace_history.txt && echo "________________________________________" >> /tmp/DiskSpace_history.txt
```

also you can see the history of Disk Space usage by sar/atop command (if these tools were installed and configured)

But if you use zabbix monitoring tool, you just need to create host and assign linux OS template (which is the default template of zabbix) to server and its done!
<https://www.zabbix.com/documentation/current/en/manual/config/hosts/host#configuration>

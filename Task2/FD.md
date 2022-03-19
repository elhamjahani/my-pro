# Memory

In operating System we have some commands for checking File Descriptors count.
for example:

```
bash> cat /proc/sys/fs/file-nr
27092	0	9223372036854775807
```
```
bash> lsof | grep "YOUR_PID" | wc -l
```
```
bash> ls -l /proc/YOUR_PID/fd/  | wc -l
```

if you want to monitor this server on command line you can use above commands and compare the value with max amount of FD on OS but if you want to send the result to another monitoring tools ,you can use the script in Task2/Scripts/FD.sh 

In this script you should just run the script without any option.

Copy file Task2/Scripts/FD.sh to your server and :
```
cd SCRIPT_PATH
bash ./FD.sh
```
Also you can put below line in crontab to have a history of these informations:

```
crontab -e
* * * * *  date >> /tmp/FD_history.txt && cat /proc/sys/fs/file-nr | awk '{print $1}' >> /tmp/FD_history.txt && echo "________________________________________" >> /tmp/FD_history.txt
```


But if you use zabbix monitoring tool, you just need to create host and assign linux OS template (which is the default template of zabbix) to server and its done!
<https://www.zabbix.com/documentation/current/en/manual/config/hosts/host#configuration>

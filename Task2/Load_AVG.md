# Load AVG
In operating System we have some commands for checking cpu usage.
for example:
```
bash> top -b -n 1 | head -n1 | awk '{print $10,$11,$12,$13,$14}'
load average: 1.86, 2.13, 2.16
```
```
bash> uptime | cut -d, -f 4,5,6
  load average: 2.34, 2.23, 2.19
```

if you want to monitor this server on command line you can use above commands but if you want to send the result to another monitoring tools ,you can use the script in Task2/Scripts/Load_AVG.sh 

In this script you can enter one of {1m, 5m, 15m} after script name and see the Load AVG.

Copy file Task2/Scripts/Load_AVG.sh to your server and :
```
cd SCRIPT_PATH
bash ./Load_AVG.sh 1m
```
Also you can put below line in crontab to have a history of these informations:

```
crontab -e
* * * * *  date >> /tmp/mpstat_history.txt && top -b -n 1 | head -n1 | awk '{print $10,$11,$12,$13,$14}' >> /tmp/mpstat_history.txt && echo "________________________________________" >> /tmp/LAVG_history.txt
```

But if you use zabbix monitoring tool, you just need to create host and assign linux OS template (which is the default template of zabbix) to server and its done!
<https://www.zabbix.com/documentation/current/en/manual/config/hosts/host#configuration>

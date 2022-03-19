# Network Bandwith and Speed

In operating System we have some commands for checking Network Traffic amount which we talk about it on Network_Traffic Section.
Network Bandwith is total incoming and outgoing traffic and will cause problems if it is close to its maximum. (in zabbix you can have a calculator item which is total of income and outgoing traffic and after that create a trigger for it based on your NIC )
another Item which is importand in this section is ethernet connection speed. this item determines how fast the connections connect to the server. 
It can help you diagnose performance issues. Knowing the speed limit of the NIC is also helpful if you are upgrading your internet services to higher bandwidth, as it will help you to verify if you can take full advantage of the available bandwidth.
you can check current speed of NIC by command:

```
bash> speedtest
Retrieving speedtest.net configuration...
Testing from Iran Telecommunication Company PJS (188.211.107.120)...
Retrieving speedtest.net server list...
Selecting best server based on ping...
Hosted by PISHGAMAN (Tehran) [1.70 km]: 47.62 ms
Testing download speed................................................................................
Download: 16.95 Mbit/s
Testing upload speed......................................................................................................
Upload: 1.01 Mbit/s
```
you can install and use this command by : <https://command-not-found.com/speedtest-cli>
```
bash> iftop
```
if you do not have iftop command, you can install it : <https://command-not-found.com/iftop>

if you want to monitor this server on command line you can use above commands but if you want to send the result to another monitoring tools ,you can use the script in Task2/Scripts/Network_Speed.sh 

In this script you can enter one of {download , upload} after script name and see the NIC Speed.

Copy file Task2/Scripts/Network_Speed.sh to your server and :
```
cd SCRIPT_PATH
bash ./Network_Speed.sh upload
```
Also you can put below line in crontab to have a history of these informations:

```
crontab -e
* * * * *  date >> /tmp/NIC_Speed_history.txt && speedtest | grep -E "Download|Upload" >> /tmp/NIC_Speed_history.txt && echo "________________________________________" >> /tmp/NIC_Speed_history.txt
```


But if you use zabbix monitoring tool, you just need to create host and assign linux OS template (which is the default template of zabbix) to server and its done!
<https://www.zabbix.com/documentation/current/en/manual/config/hosts/host#configuration>

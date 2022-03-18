# Network Traffic

In operating System we have some commands for checking Network Traffic amount.
for example:

```
bash> ifconfig NETWORK_CARD_NAME | grep -E "RX pa|TX pa"
        RX packets 748882  bytes 461326437 (461.3 MB)
        TX packets 466525  bytes 72575830 (72.5 MB)
```
```
bash> cat /proc/net/dev | grep NETWORK_CARD_NAME
Inter-|   Receive                                                |  Transmit
 face |bytes    packets errs drop fifo frame compressed multicast|bytes    packets errs drop fifo colls carrier compressed
 eth1 |463432084  752433   0   0   0    0          0         0   |72923388  468773    0    0    0     0       0          0
```
```
bash> iftop
```
if you do not have iftop command, you can install it : <https://command-not-found.com/iftop>

if you want to monitor this server on command line you can use above commands but if you want to send the result to another monitoring tools ,you can use the script in Task2/Scripts/Network_Traffic.sh 

In this script you can enter one of {input , output} after script name and see the Memory amount.

Copy file Task2/Scripts/Network_Traffic.sh to your server and :
```
cd SCRIPT_PATH
bash ./Network_Traffic.sh input
```
Also you can put below line in crontab to have a history of these informations:

```
crontab -e
* * * * *  date >> /tmp/mpstat_history.txt && cat /proc/net/dev | grep NETWORK_CARD_NAME >> /tmp/mpstat_history.txt && echo "________________________________________" >> /tmp/Network_traffic.txt
```


But if you use zabbix monitoring tool, you just need to create host and assign linux OS template (which is the default template of zabbix) to server and its done!
<https://www.zabbix.com/documentation/current/en/manual/config/hosts/host#configuration>

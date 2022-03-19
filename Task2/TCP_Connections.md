# Memory

In operating System we have some commands for checking the state of TCP Connections.
for example:

```
bash> netstat -ntpu
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    
tcp        0      0 127.0.0.1:46373         127.0.0.1:43194         TIME_WAIT   -                   
tcp        0      0 192.168.122.1:51246     192.168.122.1:4506      ESTABLISHED -                   
tcp        0      0 127.0.0.1:37369         127.0.0.1:34698         TIME_WAIT   -                   
```
```
bash> ss
Netid 	 State         Recv-Q Send-Q                                                                      	     Local Address:Port        	   Peer Address:Port   Process
tcp      CLOSE-WAIT    283636    0                                                                                   192.168.1.8:34878             13.107.21.200:https                 
tcp      ESTAB         0         0                                                                                   192.168.1.8:47010              52.149.21.60:https                 
tcp      ESTAB         0         0                                                                                 10.250.255.74:58404              172.30.5.166:6443                  

```
```
bash> cat /proc/net/sockstat
sockets: used 2306
TCP: inuse 109 orphan 1 tw 869 alloc 134 mem 347
UDP: inuse 26 mem 15
UDPLITE: inuse 0
RAW: inuse 0
FRAG: inuse 0 memory 0

```

if you want to monitor this server on command line you can use above commands but if you want to send the result to another monitoring tools ,you can use the script in Task2/Scripts/TCP_Connections.sh 

In this script you can enter one of {ESTABLISHED, TIME_WAIT, LISTEN, CLOSE_WAIT, FIN_WAIT2, FIN_WAIT1} (which are the importand stats) after script name and see the number of TCP Connections for each state.

Copy file Task2/Scripts/TCP_Connections.sh to your server and :
```
cd SCRIPT_PATH
bash ./TCP_Connections.sh TIME_WAIT
```
Also you can put below line in crontab to have a history of these informations:

```
crontab -e
* * * * *  date >> /tmp/tcp_history.txt && declare -a StringArray=("ESTABLISHED" "LISTEN" "TIME_WAIT" "CLOSE_WAIT" "FIN_WAIT1" "FIN_WAIT2" ) ; for i in ${StringArray[@]} ; do echo -e "$i: \t `netstat -antu | grep $i | wc -l`" ; done >> /tmp/tcp_history.txt && echo "________________________________________" >> /tmp/tcp_history.txt
```


But if you use zabbix monitoring tool, you can use zabbix_sender in crontab (for Zabbix trapper Item) and send amount of items to zabbix server or you can add UserParameter to zabbix agent.

after that you can create new items in zabbix GUI.

<https://www.zabbix.com/documentation/5.4/en/manual/config/items/userparameters>

<https://www.zabbix.com/documentation/5.4/en/manual/config/items/itemtypes/trapper>

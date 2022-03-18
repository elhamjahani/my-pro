# my-pro
For monitoring a server its better to use tools like zabbix, nagios, ... .all these tools use some protocols to gather server's data for example SNMP, ICMP or ... .
in this case I try to define the OS side Commands and ways to monitor and how we use zabbix to monitor these items.

## Task 2

### Solution
For server which do ssl offloading and proxy we should monitor below items:

<details>
  <summary>CPU Usage</summary>
  <p>SSL ofloading and handling connections are cpu sensitive</p>
</details>


* CPU Usage					SSL ofloading and handling connections are cpu sensitive
* Load AVG (1m ,5m, 15m)			How Busy is server
* Memory					always be usefull to monitor memory
* Network Traffic (incoming and outgoing)	for traffic and load monitoring
* Network Card Bandwith				because of the limitation of bandwith (2 * 10G)
* TCP Connections status			Connections of Proxy Monitoring (TIME_WAIT and ...)
* Disk Space					for data
* Disk IO					Encryption/Decryption 
* Number of FD	 				number of File Descriptors
* If we use applications for ssl offloading like haproxy or ... we should monitor this application.

For the convenience of the documents, a separate file has been created in the folder Task2 for each of the above items.

Please check files.

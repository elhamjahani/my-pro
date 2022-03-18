# my-pro
For monitoring a server its better to use tools like zabbix, nagios, ... .all these tools use some protocols to gather server's data for example SNMP, ICMP or ... .
in this case I try to define the OS side Commands and ways to monitor and how we use zabbix to monitor these items.

## Task 2

### Solution
For server which do ssl offloading and proxy we should monitor below items:

* CPU Usage
* CPU Load AVG (1m ,5m, 15m)
* Memory
* Network Traffic (incoming and outgoing)
* Network Card Bandwith
* TCP Connections status
* Disk Space
* Disk IO
* Number od Open Files
* If we use applications for ssl offloading like haproxy or ... we should monitor this application.

For the convenience of the documents, a separate file has been created in the folder Task2 for each of the above items.

Please check files.

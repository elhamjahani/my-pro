# Monitor All Items By Zabbix Monitoring

first of all you need to install zabbix server (based on your security policies and architecture you can install zabbix proxy if its needed and also zabbix agent).

zabbix server Installation: <https://www.zabbix.com/download?zabbix=6.0&os_distribution=red_hat_enterprise_linux&os_version=8&db=mysql&ws=apache>

zabbix agent Installation: <https://www.zabbix.com/documentation/3.2/en/manual/installation/install_from_packages/agent_installation>

In order not to prolong this matter, we assume that the agent is installed on the server, which is connected to Zabbix server and you can see this server on zabbix GUI.

In this way, you should make sure that the desired template is connected to the server or not :

Go to Menue -> Configuration -> Hosts
* find your host
* click on your host name
* go to "Template" tab
* check Templates which were assigned to your server.

For out Case we should have below templates for our servers:
* Template OS Linux by Zabbix agent
* Template App HaProxy by HTTPD

By above templates we have graph for :
1- CPU Usage
2- CPU Context switches and interrupts
3- CPU Utilization
4- Memory
5- Network Traffic per NIC
6- Network Speed per NIC
7- Disk IO per Partitions
8- Disk utilization
9- File Descriptor Item (for having graph you just need to create it because it's item is exist)
10- Haproxy (Or you can monitor other ssl offloading tools if you want)


For TCP Connections Monitoring you can do like below steps:

copy file Task2/Scripts/TCP_Connections.conf to your server and agent address:
```
bash> cp PATH/TCP_Connections.conf /etc/zabbix/zabbix_agentd.d/
bash> systemctl restart zabbix-agent
```

Then you need to define items in zabbix GUI (also you can create a new template and add these items to this template to assign to any server you want ):



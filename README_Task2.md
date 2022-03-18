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
<details>
  <summary>Load AVG (1m ,5m, 15m)</summary>
  <p>How Busy is server</p>
</details>
<details>
  <summary>Memory</summary>
  <p>Always be usefull to monitor memory</p>
</details>
<details>
  <summary>Network Traffic (incoming and outgoing)</summary>
  <p>For traffic and load monitoring</p>
</details>
<details>
  <summary>Network Card Bandwith</summary>
  <p>Because of the limitation of bandwith (2 * 10G)</p>
</details>
<details>
  <summary>TCP Connections status</summary>
  <p>Connections of Proxy Monitoring (TIME_WAIT and ...)</p>
</details>
<details>
  <summary>Disk Space</summary>
  <p>For data</p>
</details>
<details>
  <summary>Disk IO</summary>
  <p>Encryption/Decryption</p>
</details>
<details>
  <summary>Number of FD</summary>
  <p>Number of File Descriptors</p>
</details>
<details>
  <summary>SSL Offloading Tool</summary>
  <p>If we use applications for ssl offloading like haproxy or ... we should monitor this application.</p>
</details>

For the convenience of the documents, a separate file has been created in the folder Task2 for each of the above items.

Please check files.

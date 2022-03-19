# challenges of monitoring

Sometimes, There are some challenges when you want to monitor a tool or system or ... .

In SSL Offloading and Proxy Servers we have some Challenges too:

## High server load when using commands
Some commands put pressure on server so if you want to use these command you must be careful about system stats as well.

Besides Commands may differ between different operating system distributions. so you need learn about it and search about it before using these commands.


## HTTPS -> HTTP decryption inspection

HTTP inspection (When encrypted request decrypted by SSL-Offloading server) is difficult to choose (for which http requests)?. Hackers are using the SSL/TLS protocols as a tool to obfuscate their attack payloads. 

A security device may be able to identify a cross-site scripting or SQL injection attack in plaintext, but if the same attack is encrypted using SSL/TLS, the attack will go through unless it has been decrypted first for inspection.

## Firewall above our server

we need to monitor Internet Facing Firewall Monitoring like Catch Security Threats, DDoS attacks , Spoofing that is hard.

for example for checking DDoS attacks you need to monitor kernel parameters and also /var/log/messages and all connections.

## High Availability

It's always better to have High Availablity and Cluster for our tools and applications. so you need to monitor the state of Cluster.

Monitor so that if one of the cluster servers becomes inaccessible, it will be notified as soon as possible and the traffic will be removed from it.

## Certificate expiration time 

Also you need to monitor the expiration date and time of your certificate and its important to have a trigger and alert for this important item.

## Specify thresholds 

the important thing about monitoring is about specify threshold and alert for each item. because without thresholds you have to monitor items all the times and also it has possibility to miss items and dangerous stats.

so the important part of monitoring is about specifying alerts.

if you know about business and tools which you use in server, its easy to create trigger and alerts. 

The main challenge is for when you have no knowledge about the monitored items so you need to read about the monitored items and also observe these items in the monitoring system or monitored scripts for a while to understand What is the behavior of each item when there is a problem? 

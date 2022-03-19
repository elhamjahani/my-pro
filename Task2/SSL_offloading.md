# SSL Ofloading

In operating System we can install many tools for SSL Offloading for exmple haproxy and ... .each tool can be monitored by special way. for example we can enable state page in haproxy and see the status of connections and traffics.
So it is based on our tool on server.

you can install haproxy on your server <https://command-not-found.com/haproxy>

and after that configure haproxy to enable stats page:
```
bash> vim /etc/haproxy/haproxy.cfg
# add below command as a new frontend
frontend stats
bind *:8404
stats enable
stats uri /stats
stats refresh 10s
#stats auth Username:Password # Authentication credentials

bash> systemctl restart haproxy
```

after that you can see the stat page by entering below URL on your browser:

http://IP:8404/stats

But if you use zabbix monitoring tool, you just need enable state page on haproxy and after that you need to create host and assign haproxy template (which is the default template of zabbix) to server and its done!
<https://www.zabbix.com/integrations/haproxy>



https://pi-hole.net/
https://docs.pi-hole.net/guides/dns-over-https/
https://github.com/pi-hole/docker-pi-hole

This is for running a pi-hole dns_server with docker-compose
- cloudflared https installed (requires small initial setup)


## Notes ##
Data is stored in the data folder




## Procedure ##
### Start Docker Container ###
```
docker-compose up -d  
```


### Access GUI ###
- Port 80
- First time Password in docker-compose file


### Change Password ###



### Configuring Pi-hole with Cloudflared ###
Finally, configure Pi-hole to use the local cloudflared service as the upstream DNS server by specifying 127.0.0.1#5053 as the Custom DNS (IPv4):
Upstream DNS Servers
Custom 1 (IPv4): 127.0.0.1#5053

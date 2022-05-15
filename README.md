# Scanny

Scanny is a network scanner app similar where we use a cron job every 10 minutes to trigger nmap to scan out network and output the results into a text file. We then use a .php file to format the text file, add a few things, and present the results for a web browser.

## Commands


Install Apache2, PHP and nmap
```
sudo apt-get install apache2

sudo apt-get install php

sudo apt-get install nmap
```

Configure ownership and permissions (discouraged)

```
sudo chown ubuntu /var/www/html

sudo chmod 777 /var/www/html
```

Cron job configuration
```
sudo crontab -e

*/10 * * * * nmap 192.168.1.0/24 -oN /var/www/html/nmap.html


# Squid Proxy Installer

Auto install Squid 3 proxy on following linux OS.

* Ubuntu 14.04, 16.04, 18.04, 20.04
* Debian 8, 9, 10
* CentOS 7, 8

wget https://raw.githubusercontent.com/xenomorphics/squidproxy-autoinstaller/main/squid3-install.sh
sudo bash squid3-install.sh

# Create Users

To create users, run

sudo /usr/bin/htpasswd -b -c /etc/squid/passwd USERNAME_HERE PASSWORD_HERE


To update password for am existing user, run

sudo /usr/bin/htpasswd /etc/squid/passwd USERNAME_HERE



always use after you have done thuis                        
sudo systemctl reload squid


# Configure Multiple IP Address

NOTE: This is only needed if you have more than one IP on your server.

Before you can configure squid to use muliple IP address, you need to add IP to your server and you should be able to connect to server using these IPs.

Once IP added to your server, you can configure it to use with squid proxy by running following command

```
wget https://raw.githubusercontent.com/xenomorphics/squidproxy-autoinstaller/main/squid-conf-ip.sh
sudo bash squid-conf-ip.sh
```
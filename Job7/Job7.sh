#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install proftpd-*

echo "proftpd installé avec tous ses modules"

echo "création de la clé et du certificat"
sudo mkdir /etc/proftpd/ssl
sudo cp config_proftpd.txt /etc/proftpd/proftpd.conf
sudo cp config_modules.txt /etc/proftpd/modules.conf
sudo cp config_tls.txt /etc/proftpd/tls.conf
sudo openssl req -x509 -newkey rsa:2048 -keyout /etc/proftpd/ssl/proftpd.key.pem -out /etc/proftpd/ssl/proftpd.cert.pem -nodes -days 365
sudo systemctl restart proftpd
systemctl status proftpd.service



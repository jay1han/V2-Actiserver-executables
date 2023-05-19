#!/usr/bin/bash

mkdir /etc/actimetre
mkdir /var/www/cgi-bin

cp actimetre.conf clearserver.sh killjava.sh run.sh /etc/actimetre

cd /etc/actimetre
chown www-data:www-data .
chmod 777 . *.sh
echo > server.log
echo {} > self.data
chmod 666 *.log *.data

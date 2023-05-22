#!/usr/bin/bash

mkdir /etc/actimetre
mkdir /var/www/cgi-bin

cp actiserver.conf clearserver.sh Actiserver_main.jar /etc/actimetre
cp actiserver.service /etc/systemd/system/

cd /etc/actimetre
chown www-data:www-data .
chmod 777 . *.sh
echo > server.log
echo {} > self.data
chmod 666 *.log *.data


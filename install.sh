#!/usr/bin/bash

mkdir /etc/actimetre
mkdir /media/actimetre
chown www-data:www-data /media/actimetre
chmod 777 /media/actimetre

cp actiserver.conf clearserver.sh Actiserver-2.0.jar /etc/actimetre
cp actiserver.service /etc/systemd/system/
cp sudoers.actiserver /etc/sudoers.d/

cd /etc/actimetre
chown www-data:www-data .
chmod 777 . *.sh
echo > server.log
echo > report.log
echo {} > self.data
chmod 666 *.log *.data

echo "Please review and edit /etc/actimetre/actiserver.conf"

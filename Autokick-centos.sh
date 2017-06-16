#!/bin/bash

# go to root
cd

# install crond service
yum install vixie-cron -y

# download userlimit
wget https://raw.githubusercontent.com/syahz86/VPN/master/conf/userlimit-centos.sh
chmod +x userlimit-centos.sh

# setup cron for userlimit
echo "* * * * * root /root/userlimit-centos.sh" >> /etc/crontab
echo "* * * * * root sleep 5; /root/userlimit-centos.sh" >> /etc/crontab
echo "* * * * * root sleep 10; /root/userlimit-centos.sh" >> /etc/crontab
echo "* * * * * root sleep 15; /root/userlimit-centos.sh" >> /etc/crontab
echo "* * * * * root sleep 20; /root/userlimit-centos.sh" >> /etc/crontab
echo "* * * * * root sleep 25; /root/userlimit-centos.sh" >> /etc/crontab
echo "* * * * * root sleep 30; /root/userlimit-centos.sh" >> /etc/crontab
echo "* * * * * root sleep 35; /root/userlimit-centos.sh" >> /etc/crontab
echo "* * * * * root sleep 40; /root/userlimit-centos.sh" >> /etc/crontab
echo "* * * * * root sleep 45; /root/userlimit-centos.sh" >> /etc/crontab
echo "* * * * * root sleep 50; /root/userlimit-centos.sh" >> /etc/crontab
echo "* * * * * root sleep 55; /root/userlimit-centos.sh" >> /etc/crontab

service crond restart

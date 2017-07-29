#!/bin/sh -x


apt-get -qq update
apt-get -y install wget
apt-get -y install sudo


sudo apt-get -y install git gcc flex bison make libssl-dev libcurl4-openssl-dev libxml2-dev libpcre3-dev odbc-postgresql postgresql-client postgresql-client-common libunistring-dev libpq-dev liblua5.1-0-dev unixodbc unixodbc-dev libncurses5 libncurses5-dev

cd /usr/src && sudo wget https://www.kamailio.org/pub/kamailio/4.4.1/src/kamailio-4.4.1_src.tar.gz
sudo tar xzvf kamailio-4.4.1_src.tar.gz
cd kamailio-4.4.1
rm -f modules.lst
cp /tmp/modules.lst   /usr/src/kamailio-4.4.1/
sudo make all
sudo make install
cd /usr/local/etc/kamailio/
rm -f kamailio.cfg
cp /tmp/kamailio.cfg /usr/local/etc/kamailio/
cp /tmp/settings.cfg /usr/local/etc/kamailio/

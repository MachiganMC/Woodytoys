#!/bin/sh
PDIR=`pwd`
ZONEDIR="/etc/bind"
ZONE=$1
ZONEFILE=$2
DNSSERVICE="named"
cd $ZONEDIR
SERIAL=`/usr/sbin/named $ZONE $ZONEFILE | egrep -ho '[0-9]{10}'`
sed -i 's/'$SERIAL'/'$(($SERIAL+1))'/' $ZONEFILE
dnssec-signzone -t -g -o $1 $2 /etc/bind/Km2-1.ephec-ti.be*.private

cd $PDIR

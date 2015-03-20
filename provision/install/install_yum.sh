#!/bin/sh

. /etc/global.rc

yum -y install vim wget ant ntp java-1.7.0-openjdk java-1.7.0-openjdk-devel

/etc/init.d/ntpd start
chkconfig ntpd on

#!/bin/sh
#echo 'export PATH=$PATH:/vagrant/bin' >> /home/vagrant/.bashrc
#echo "alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'" >> /home/vagrant/.bashrc
#echo "alias cubstart='cubrid service start'" >> /home/vagrant/.bashrc
#echo "alias cubstop='cubrid service stop'" >> /home/vagrant/.bashrc

# init vagrant
/vagrant/provision/install/init_vagrant.sh

. /etc/global.rc

# yum install
${SCRIPT_HOME}/install_yum.sh

# install jdk
${SCRIPT_HOME}/install_jdk-6u45.sh

# install maven
${SCRIPT_HOME}/install_maven-3.2.5.sh

# install sqlite
${SCRIPT_HOME}/install_sqlite-3.8.8.2.sh

# service stop
${SCRIPT_HOME}/stop_service.sh

# set timezone
${SCRIPT_HOME}/set_timezone.sh

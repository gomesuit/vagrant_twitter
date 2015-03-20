#!/bin/sh
#echo 'export PATH=$PATH:/vagrant/bin' >> /home/vagrant/.bashrc
#echo "alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'" >> /home/vagrant/.bashrc
#echo "alias cubstart='cubrid service start'" >> /home/vagrant/.bashrc
#echo "alias cubstop='cubrid service stop'" >> /home/vagrant/.bashrc

# set cron
${SCRIPT_HOME}/set_cron.sh

#!/bin/sh

. /etc/global.rc

crontab -r

cat <<EOF | crontab
0 8 * * * /home/vagrant/dev/cron_java.sh "Template:今日は何の日" >> /home/vagrant/dev/cron_java.log 2>&1
0 12 * * * /home/vagrant/dev/cron_java.sh "Portal:災害/今日は何の日" "災害" >> /home/vagrant/dev/cron_java.log 2>&1
0 16 * * * /home/vagrant/dev/cron_java.sh "Portal:文学/今日は何の日" "文学" >> /home/vagrant/dev/cron_java.log 2>&1
0 20 * * * /home/vagrant/dev/cron_java.sh "Portal:スポーツ/今日は何の日" "スポーツ" >> /home/vagrant/dev/cron_java.log 2>&1
EOF

echo "start script @ $(date)" >> /var/log/mytime.log
sleep 10
/etc/init.d/chrony stop
ntpdate 192.168.1.105
sleep 10
/etc/init.d/chrony start
echo "complete script @ $(date)" >> /var/log/mytime.log

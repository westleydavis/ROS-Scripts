echo "start script @ $(date)" >> /var/log/rostest.log
su -l odroid -c '/opt/ros/indigo/bin/roslaunch mavros px4hover.launch'
echo "end script @ $(date)" >> /var/log/rostest.log

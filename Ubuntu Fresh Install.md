#Install ROS

# add repo

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

#Set Up keys

sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

#Get Packages

sudo apt-get update

#Install Packages

sudo apt-get install ros-kinetic-desktop-full

#Initialize Rosdep

sudo rosdep init

#Update Rosdep

rosdep update

#Environment setup

echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc

source ~/.bashrc

#Dependencies for building packages

sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential

#LibSDL

sudo apt-get install libsdl1.2-dev

#Create Catkin Workspace

mkdir -p ~/catkin_ws/src

cd ~/catkin_ws/

catkin_make

echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc

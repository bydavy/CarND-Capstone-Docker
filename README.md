# Docker container to build Udacity carnd capstone project

See https://github.com/udacity/CarND-Capstone

# What is this container?
This container is the full environment to compile and execute Udacity carnd capstone project.
The simulator will have to run on your host machine, but everything else can be done within this container.

# How to use it?
1. Download the script
```bash
wget https://raw.githubusercontent.com/bydavy/CarND-Capstone-Docker/master/run.sh
```
2. Specify the path of your source code and start the script
```bash
EXPORT UDACITY_SOURCE=/home/user/capstone_source && run.sh
```
3. You're now within the container and the current directory contains the source of your project. You can compile and run it with the following command:
```bash
cd ros
catkin_make
source devel/setup.sh
roslaunch launch/styx.launch
```

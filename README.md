# Docker container to build Udacity carnd capstone project

See https://github.com/udacity/CarND-Capstone

# How to use this container?

1. Download the script
```bash
wget https://raw.githubusercontent.com/bydavy/CarND-Capstone-Docker/master/run.sh
```
2. Specify the path of your source code and start the container
```bash
EXPORT UDACITY_SOURCE=/home/user/capstone_source && run.sh
```
3. You're now within the container and the current directory contains the source directory of your project. You can compile and run your project with the following command:
```bash
cd ros
catkin_make
source devel/setup.sh
roslaunch launch/styx.launch
```

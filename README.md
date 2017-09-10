# Docker container for CarND-Capstone project

This is the last project of the Udacity self-driving car NanoDegree. It's composed of a simulator (that should run on your local machine) and of the brain of the car (that should run in this container, including compilation).

The container connect to the port 4567 of the host machine, that's the port the simulator listen on.

See https://github.com/udacity/CarND-Capstone

## How to use it?
1. Download the script
```bash
wget https://raw.githubusercontent.com/bydavy/CarND-Capstone-Docker/master/run.sh
```
2. Specify the path of your source code and start the script
```bash
export UDACITY_SOURCE=/home/user/capstone_source && ./run.sh
```
3. You're now within the container and the current directory contains the source of your project. You can compile and run it with the following command:
```bash
cd ros
catkin_make
source devel/setup.sh
roslaunch launch/styx.launch
```

## I'm on MacOS, what do I need to do differently?
I recommend to install [Docker for MacOS](https://docs.docker.com/docker-for-mac/install/) instead of managing your own VM yourself.
Once installed, just run all commands including the ./run.sh script on your mac. Everything else is taken care for you

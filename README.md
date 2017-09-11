# Docker container for CarND-Capstone project

This is the last project of the Udacity self-driving car NanoDegree. It's composed of a simulator (that should run on your local machine) and of the brain of the car (that should run in this container, including compilation).

The container connect to the port 4567 of the host machine, that's the port the simulator listen on.

See [https://github.com/udacity/CarND-Capstone](https://github.com/udacity/CarND-Capstone)

## Supported OSes
Linux and MacOS are supported.

### MacOS
I recommend to install [Docker for MacOS](https://docs.docker.com/docker-for-mac/install/) instead of managing your own VM (port forwarding and file sharing is automated for you).

## Installation
1.Go to your project directory
```bash
cd /home/user/capstone_source
```
2.Download the script into your project
```bash
wget https://raw.githubusercontent.com/bydavy/CarND-Capstone-Docker/master/utils/run.sh && chmod u+x run.sh
```

## Usage
1.Start the script
```bash
./run.sh
```
2.You're now within the container and the current directory contains the source of your project. You can compile and run you project:
```bash
cd ros
catkin_make
source devel/setup.sh
roslaunch launch/styx.launch
```

### Aliases
Here are some of the cool aliases that are defined in the container
```bash
udacity_make #Compiles the project
udacity_run #Executes the project
```

### I want multiple bash sessions to my container
Simply open a new terminal and run the script again, if your container is currently running it will attach to it. Therefore, you can have one terminal session to run the project and another one to query for ROS's topic or what have you.

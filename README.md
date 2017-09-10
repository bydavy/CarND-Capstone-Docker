# Docker container for CarND-Capstone project

This is the last project of the Udacity self-driving car NanoDegree. It's composed of a simulator (that should run on your local machine) and of the brain of the car (that should run in this container, including compilation).

The container connect to the port 4567 of the host machine, that's the port the simulator listen on.

See https://github.com/udacity/CarND-Capstone

## How to use it?
1. Go to your project directory
```bash
cd /home/user/capstone_source
```
2. Download the script into your project
```bash
wget https://raw.githubusercontent.com/bydavy/CarND-Capstone-Docker/master/utils/run.sh
```
3. Start the script
```bash
chmod u+x run.sh
./run.sh
```
4. You're now within the container and the current directory contains the source of your project. You can compile and run it with the following commands:
```bash
cd ros
catkin_make
source devel/setup.sh
roslaunch launch/styx.launch
```

## Aliases defined in the container
They are some cool aliases that are defined in the container
```bash
udacity_make #Compiles the project
udacity_run #Executes the project
```

## I'm on MacOS, what do I need to do differently?
I recommend to install [Docker for MacOS](https://docs.docker.com/docker-for-mac/install/) instead of managing your own VM.
That's all, everything else is still valid!

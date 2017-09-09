FROM ubuntu:16.04

LABEL maintainer="bydavy@gmail.com"

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list' && \
  apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116 && \
  apt-get update && \
  apt-get install -y \
    python-pip \
    ros-kinetic-desktop-full && \

# cleanup
  apt-get clean && \
  rm -rf \
          /tmp/* \
          /var/lib/apt/lists/* \
          /var/tmp/*

# Install dbw_mkz
ADD dbw_mkz/* /tmp/
RUN cd /tmp && ./sdk_update.bash && \
  rm /tmp/sdk_update.bash /tmp/sdk_install.bash

# Install python dependencies
ARG PYTHON_DEPS=requirements.txt
ADD $PYTHON_DEPS /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt && \
  rm /tmp/requirements.txt

ARG MY_UID=1000
ARG MY_GID=999
RUN groupadd -g $MY_GID udacity
RUN useradd --create-home -u $MY_UID -g $MY_GID udacity
RUN echo "source /opt/ros/kinetic/setup.bash" >> /home/udacity/.bashrc

VOLUME /udacity
RUN chown udacity:udacity /udacity

USER udacity:udacity
WORKDIR udacity

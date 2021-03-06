# JupyterPI

Instructions and scripts to set up a Raspberry PI to serve Jupyter Notebooks

## Hardware

Raspberry PI 3 w/ 16GB SD card

## Software configuration

### Install Raspbian Stretch

Here's the command I use to write to the SD card:

`sudo dd bs=4M if=2018-06-27-raspbian-stretch.img of=/dev/sdb conv=fsync`

Perform initial config: Set Locale, keyboard, options, connect to network

### Install Docker

`curl -sSL https://get.docker.com |  sh`

### Add pi user to docker group

`sudo usermod -aG docker $USER`

Log out and log back in.

### Create an account on the Docker hub

If you haven't done so already create an account on https://hub.docker/com

### Log into docker

Run `docker login` and use your Docker hub account credentials.  This will allow your docker instance to pull in images from the registry.

### Build Docker Container

Build the container will the following command: 

`docker build -t jupyter1 .` 

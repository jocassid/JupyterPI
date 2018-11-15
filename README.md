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

### Define Docker Container

Tried `docker build -t jupyter1` with the included Dockerfile and requiretments.txt got the following error:

`Get https://registry-1.docker.io/v2/library/python/manifests/3.7.1-slim: unauthorized: incorrect username or password`

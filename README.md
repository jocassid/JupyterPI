# JupyterPI

Instructions and scripts to set up a Raspberry PI to serve Jupyter Notebooks

## Hardware

Raspberry PI 3 w/ 16GB SD card

## Software configuration

### Install Raspbian Stretch

Here's the command I use to write to the SD card
sudo dd bs=4M if=2018-06-27-raspbian-stretch.img of=/dev/sdb conv=fsync

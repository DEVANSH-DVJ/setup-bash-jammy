#!/bin/bash

sudo add-apt-repository ppa:graphics-drivers/ppa;
sudo apt update;

sudo apt -y install nvidia-driver-545 nvidia-settings;

# Add CUDA setup here

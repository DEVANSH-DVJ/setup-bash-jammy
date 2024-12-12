#!/bin/bash

sudo add-apt-repository ppa:graphics-drivers/ppa;
sudo apt update;

echo "Checking for the latest driver version...";
nvidia-detector;

if [ $? -eq 0 ]; then
    echo "Installing the latest Nvidia driver...";
    cd ~;
    sudo apt -y remove --purge nvidia*;
    sudo apt -y autoremove;
    sudo apt -y install `(nvidia-detector)`;
else
    echo "No Nvidia driver found!";
fi

# sudo apt -y install nvidia-driver-560 nvidia-settings;

# Add CUDA setup here

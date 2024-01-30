#!/bin/bash -i

## Python
sudo add-apt-repository ppa:deadsnakes/ppa;
sudo apt update;
sudo apt -y install python3.10 python3.10-tk;
sudo apt -y install python3-argcomplete flake8 isort pylint;
sudo apt -y install python-is-python3;

## Miniconda
# Download the installation script from https://docs.conda.io/projects/miniconda/en/latest/
mkdir -p ~/miniconda;
cd ~/miniconda;
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda/miniconda.sh;
bash ~/miniconda/miniconda.sh -b -u -p ~/miniconda;
rm -rf ~/miniconda/miniconda.sh;
~/miniconda/bin/conda init bash;
source ~/.bashrc;
conda config --set auto_activate_base false;
source ~/.bashrc;

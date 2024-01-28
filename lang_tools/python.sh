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

## Conda environment 3.10
conda create -y -n 3.10 python=3.10;
conda activate 3.10;
pip install --upgrade pip;
pip install wheel pathlib;
pip install requests wget;
pip install numpy scipy matplotlib pandas;
pip install ipython jupyter astropy;
pip install flake8 pylint autopep8;
pip cache purge;
conda deactivate;
conda clean -y --all;

## Python aliases
echo "alias 1='conda activate 3.10';
alias 0='conda deactivate';
alias jp='conda activate 3.10; jupyter-notebook;';
" >>~/.bashrc;
source ~/.bashrc;

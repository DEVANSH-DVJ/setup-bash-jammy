#!/bin/bash -i

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

## Python
sudo add-apt-repository ppa:deadsnakes/ppa;
sudo apt update;
sudo apt -y install python3.8 python3.8-venv python3.8-tk;
sudo apt -y install python3.10 python3.10-venv python3.10-tk;
sudo apt -y install python3-argcomplete flake8 isort pylint;
sudo apt -y install python-is-python3;

mkdir -p ~/virtualenvs;
cd ~/virtualenvs;

## Virtualenv of python3.8
python3.8 -m venv 3.8;
source 3.8/bin/activate;
pip install --upgrade pip;
pip install wheel pathlib;
pip install requests wget;
pip install numpy scipy matplotlib pandas;
pip install ipython jupyter astropy;
pip install flake8 pylint autopep8;
deactivate;

## Virtualenv of python3.10
python3.10 -m venv 3.10;
source 3.10/bin/activate;
pip install --upgrade pip;
pip install wheel pathlib;
pip install requests wget;
pip install numpy scipy matplotlib pandas;
pip install ipython jupyter astropy;
pip install flake8 pylint autopep8;
deactivate;

## Python aliases
echo "alias 3='source ~/virtualenvs/3.8/bin/activate';
alias 1='source ~/virtualenvs/3.10/bin/activate';
alias 0='deactivate';
alias jp='source ~/virtualenvs/3.8/bin/activate; jupyter-notebook;';
alias pm='python manage.py makemigrations; python manage.py migrate; python manage.py runserver';
" >>~/.bashrc;
source ~/.bashrc;

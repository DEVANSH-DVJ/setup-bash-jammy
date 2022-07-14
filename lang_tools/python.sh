## Python
sudo add-apt-repository ppa:deadsnakes/ppa;
sudo apt update;
sudo apt -y install python3.8 python3.8-venv python3.8-tk python-tk;
sudo apt -y install python3-argcomplete flake8 isort pylint;

mkdir ~/virtualenvs;
cd ~/virtualenvs;

python3.8 -m venv 3.8;

source 3.8/bin/activate;
pip install --upgrade pip;
pip install wheel pathlib;
pip install numpy scipy matplotlib ipython jupyter pandas requests wget flake8 pylint autopep8;
deactivate;

echo "alias 3='source ~/virtualenvs/3.8/bin/activate';
alias 0='deactivate';
alias jp='source ~/virtualenvs/3.8/bin/activate; jupyter-notebook;';
alias pm='python manage.py makemigrations; python manage.py migrate; python manage.py runserver';
" >> ~/.bashrc;

source ~/.bashrc;

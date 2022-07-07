# Common tools
sudo apt -y install terminator tree bash-completion;

# Node & NPM
sudo apt -y install curl;
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -;
sudo apt -y install nodejs;

# Yarn
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -;
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list;
sudo apt update;
sudo apt -y install yarn;

# Python
sudo add-apt-repository ppa:deadsnakes/ppa;
sudo apt update;
sudo apt -y install python3.8 python3.8-venv python3.8-tk python-tk;
sudo apt -y install python3-argcomplete flake8 isort pylint;

# C/C++
sudo apt -y install gcc g++;
sudo apt -y install clang-14;

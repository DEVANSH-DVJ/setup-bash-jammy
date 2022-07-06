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

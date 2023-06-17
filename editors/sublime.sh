wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -;
sudo apt -y install apt-transport-https;
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list;
sudo apt update;
sudo apt -y install sublime-text;
sudo apt -y install sublime-merge;

## Test
# sublime-text;
# sublime-merge;

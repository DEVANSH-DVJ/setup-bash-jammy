## Node & NPM
sudo apt -y install curl;
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -;
sudo apt -y install nodejs;

## Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/yarn.gpg;
echo "deb [signed-by=/etc/apt/trusted.gpg.d/yarn.gpg] https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update;
sudo apt -y install yarn;

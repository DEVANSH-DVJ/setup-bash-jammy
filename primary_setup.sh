#!/bin/bash

sudo apt update;

## List
apt list --upgradable;

## Upgrade
sudo apt -y upgrade;

# Common tools
sudo apt -y install tree bash-completion terminator;

# Common aliases
echo "
alias sb='source ~/.bashrc';
alias rm='rm -i';
" >> ~/.bashrc;

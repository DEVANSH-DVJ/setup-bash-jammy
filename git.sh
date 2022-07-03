sudo apt -y install git

## Git configurations
git config --global user.name "devansh-dvj"
git config --global user.email "devansh.dvj@gmail.com"
echo "[user]
  name = devansh-dvj
  email = devansh.dvj@gmail.com
[alias]
  co = checkout
  ci = commit
  st = status
  br = branch
  hist = log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short
" >~/.gitconfig

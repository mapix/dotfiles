#!/usr/bin bash

set -x

echo 'processing dot files... '
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -sf ${DIR}/config/.pip  ~/ 
ln -sf ${DIR}/config/.tmux.conf ~/ 
ln -sf ${DIR}/config/.vimrc.bundles.local ~/ 
ln -sf ${DIR}/config/.vimrc.local ~/ 

echo 'processing git config ... '
git config --global user.email "mapix.me@gmail.com"
git config --global user.name "mapix"
git config --global core.excludesfile ~/.gitignore_global

echo 'processing spf13-vim ... '
cd $HOME
curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
echo 'done!'

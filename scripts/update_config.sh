#!/usr/bin bash

set -x


echo 'processing dot files... '
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -sf ${DIR}/config/.pip  ~/ 
ln -sf ${DIR}/config/.tmux.conf ~/ 
ln -sf ${DIR}/config/.vimrc.bundles.local ~/ 
ln -sf ${DIR}/config/.vimrc.local ~/ 

echo 'processing git config ... '
git config --global core.excludesfile ~/.gitignore_global

echo 'processing spf13-vim ... '
cd $HOME/.spf13-vim-3
git pull
vim +BundleInstall! +BundleClean +q
echo 'done!'

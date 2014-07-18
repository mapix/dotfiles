#!/usr/bin bash

set -x

echo 'processing git config ... '
git config --global core.excludesfile ~/.gitignore_global

echo 'processing spf13-vim ... '
cd $HOME/.spf13-vim-3
git pull
vim +BundleInstall! +BundleClean +q
echo 'done!'

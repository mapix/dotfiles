#!/usr/bin bash

set -x

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOT_ROOT_DIR="$( dirname "${DIR}")"
ln -s ${DOT_ROOT_DIR}/config/.pip  ~/ 
ln -s ${DOT_ROOT_DIR}/config/.tmux.conf ~/ 
ln -s ${DOT_ROOT_DIR}/config/.vimrc.bundles.local ~/ 
ln -s ${DOT_ROOT_DIR}/config/.vimrc.local ~/ 

echo 'processing spf13-vim ... '
cd $HOME
curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
echo 'done!'

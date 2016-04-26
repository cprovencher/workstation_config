#!/bin/bash
sudo apt-get install -y vim tmux flake8
git config --global user.email "michael.ellenburg@mesosphere.io"
git config --global user.name "Michael Ellenburg"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#syntastic uses local flake8 binary
#syntastic will not accept aliases. Needs to have flake8 on path
sudo cp flake8 /usr/bin/local/flake8

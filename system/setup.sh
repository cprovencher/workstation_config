#!/bin/bash
sudo apt-get install -y vim tmux flake8
git config --global user.email "michael.ellenburg@mesosphere.io"
git config --global user.name "Michael Ellenburg"
git config --global credential.helper cache
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#syntastic uses local flake8 binary
#syntastic will not accept aliases. Needs to have flake8 on path
sudo cp flake8 /usr/bin/local/flake8
#docker installation
sudo apt-get install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
# this command needs some love
#sudo cat 'deb https://apt.dockerproject.org/repo ubuntu-wily main' > /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get purge lxc-docker
apt-cache policy docker-engine
sudo apt-get install linux-image-extra-$(uname -r)
sudo apt-get install docker-engine
sudo service docker start
sudo groupadd docker
sudo usermod -aG docker michael

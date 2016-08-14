#!/usr/bin/env bash

# 163 sources
sudo cp /etc/apt/sources.list /etc/apt/sources.list.ubuntu
sudo sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

# update
sudo apt-get -y update && apt-get -y upgrade

# docker
sudo apt-get -y install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' > /etc/apt/sources.list.d/docker.list
sudo apt-get -y update
sudo apt-get -y install docker-engine
## docker not sudo
sudo groupadd docker
sudo gpasswd -a ${USER} docker

# wget curl
sudo apt-get -y install wget curl git

# tmux zsh
sudo apt-get -y install tmux zsh

# tmux config
wget -O ~/.tmux.conf https://raw.githubusercontent.com/xxstop/vagrants/ubuntu4win/.tmux.conf

# oh my zsh
sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo sed -i "s/\/home\/vagrant:\/bin\/bash/\/home\/vagrant:\/bin\/zsh/g" /etc/passwd

# emacs vim
sudo apt-get -y install vim emacs

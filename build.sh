#!/bin/sh

gem environment

# git clone https://git-tails.immerda.ch/tails && \
git clone https://github.com/mgoessen/tails && \
cd tails && \
git checkout -b 4.6 4.6 && \
git submodule update --init

chmod 755 $HOME
chmod 755 /home/travis/.ssh
chmod 755 /home/travis/.ssh/config

#sudo su travis -c "rake vm:provision" && sudo su travis -c "rake vm:destroy"
sudo su travis -c "rake build" && sudo su travis -c "rake vm:halt"

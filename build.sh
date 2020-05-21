#!/bin/sh

gem environment

git clone https://git-tails.immerda.ch/tails && \
cd tails && \
git checkout devel && \
git submodule update --init

ls -alh $HOME
ls -alh $HOME/tails
ls -alh $HOME/tails/vagrant
chmod g+rx $HOME
#chmod 755 -R $HOME
#chmod 755 -R $HOME/tails
#chmod 755 -R $HOME/tails/vagrant

sudo su travis -c "rake build" && sudo su travis -c "rake vm:halt"

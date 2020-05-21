#!/bin/sh

gem environment

git clone https://git-tails.immerda.ch/tails && \
cd tails && \
git checkout devel && \
git submodule update --init

ls -alh $HOME
chmod g+rx $HOME

cd vagrant
sudo su travis -c 'vagrant up --provider=libvirt'

ls -alh /home/travis/.ssh
ls -alh /home/travis/.ssh/config
chmod 755 /home/travis/.ssh
chmod 755 /home/travis/.ssh/config

sudo su travis -c 'vagrant ssh -c "echo test"'

sudo su travis -c "rake build" && sudo su travis -c "rake vm:halt"

#!/bin/sh

sudo ruby -v
sudo gem -v
sudo gem list
sudo gem list --local
sudo gem environment


git clone https://git-tails.immerda.ch/tails && \
cd tails && \
git checkout devel && \
git submodule update --init

sudo su travis -c "rake build" && sudo su travis -c "rake vm:halt"

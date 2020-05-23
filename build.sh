#!/bin/sh

id
sudo su travis -c id
gem environment

git clone https://git-tails.immerda.ch/tails && \
cd tails && \
git checkout stable && \
git submodule update --init

export TAILS_BUILD_OPTIONS="fastcomp"
sudo su travis -c "rake vm:up" && \
sudo su travis -c "rake vm:provision" \ &&
sudo su travis -c "rake vm:ssh -c echo '== VM OK ==' " && \

#sudo su travis -c "rake build" && \

sudo su travis -c "rake vm:halt" && \
sudo su travis -c "rake vm:destroy"

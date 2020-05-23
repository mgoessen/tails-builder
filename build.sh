#!/bin/sh

gem environment

git clone https://git-tails.immerda.ch/tails && \
cd tails && \
git checkout stable && \
git submodule update --init

export TAILS_BUILD_OPTIONS="fastcomp"
sudo su travis -c "rake vm:provision" && sudo su travis -c "rake vm:destroy"
#sudo su travis -c "rake build" && sudo su travis -c "rake vm:halt"

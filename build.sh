#!/bin/sh

git clone https://git-tails.immerda.ch/tails && \
cd tails && \
git checkout devel && \
git submodule update --init

id

rake build && rake vm:halt

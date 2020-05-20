#!/bin/sh

git clone https://git-tails.immerda.ch/tails && \
cd tails && \
git checkout devel && \
git submodule update --init

export VAGRANT_DEFAULT_PROVIDER=libvirt
rake build && rake vm:halt

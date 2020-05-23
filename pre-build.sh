#!/bin/sh

sudo add-apt-repository universe && \
sudo apt update && \
sudo apt install \
    psmisc \
    git \
    rake \
    libvirt-daemon-system \
    dnsmasq-base \
    ebtables \
    qemu-system-x86 \
    qemu-utils \
    vagrant \
    vagrant-libvirt \
    ssh \
    vmdebootstrap

for group in kvm libvirt libvirt-qemu ; do
   sudo adduser "$(whoami)" "$group"
done

chmod 755 $HOME
chmod 755 $HOME/.ssh
chmod 755 $HOME/.ssh/config

sudo adduser libvirt-qemu $(whoami) && \
sudo systemctl restart libvirtd

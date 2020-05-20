#!/bin/sh

free -m
cat /proc/cpuinfo


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
    vmdebootstrap && \
sudo systemctl restart libvirtd

sudo vagrant plugin install vagrant-libvirt

for group in kvm libvirt libvirt-qemu ; do
   sudo adduser "$(whoami)" "$group"
done


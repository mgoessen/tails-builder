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
    vagrant-libvirt \
    vmdebootstrap && \
sudo apt upgrade && \
sudo systemctl restart libvirtd

for group in kvm libvirt libvirt-qemu ; do
   sudo adduser "$(whoami)" "$group"
done


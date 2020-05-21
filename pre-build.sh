#!/bin/sh

free -m
cat /proc/cpuinfo
df -h

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
sudo systemctl restart libvirtd
sudo apt-get clean
df -h

for group in kvm libvirt libvirt-qemu ; do
   sudo adduser "$(whoami)" "$group"
done


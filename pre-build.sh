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
    bridge-utils dnsmasq-base ebtables libvirt-bin libvirt-dev qemu-kvm qemu-utils ruby-dev \ &&
sudo systemctl restart libvirtd

for group in kvm libvirt libvirt-qemu ; do
   sudo adduser "$(whoami)" "$group"
done


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
    vmdebootstrap && \
sudo systemctl restart libvirtd

sudo wget -nv https://releases.hashicorp.com/vagrant/2.2.7/vagrant_2.2.7_x86_64.deb && \
sudo dpkg -i vagrant_2.2.7_x86_64.deb && \
vagrant --version && \
sudo vagrant plugin install vagrant-libvirt

for group in kvm libvirt libvirt-qemu ; do
   sudo adduser "$(whoami)" "$group"
done


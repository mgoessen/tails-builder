#!/bin/sh

ls -al

ls -al tails-*

sha256sum tails/tails-*

sudo ls -alh /var/lib/libvirt/images

sudo chown travis:travis /var/lib/libvirt/images

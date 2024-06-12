#!/bin/sh/

if sudo cat /etc/dnf/dnf.conf | grep -q "fastestmirror"
then 
    echo "Done!"
else
    echo "" >> /etc/dnf/dnf.conf
    echo "fastestmirror=True" >> /etc/dnf/dnf.conf
    echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
    echo "defaultyes=True" >> /etc/dnf/dnf.conf
    echo "keepcache=True" >> /etc/dnf/dnf.conf
fi 

sudo dnf update -y
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf update @core

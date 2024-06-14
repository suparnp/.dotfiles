#!/bin/sh

sudo dnf install -y $(sed "s/\s.*//g" pkglist.txt | sort) 

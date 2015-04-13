#!/bin/bash

# Execute the Fix Ubuntu script to ensure additional privacy.
./fixubuntu.sh

# Update software channel listings
sudo apt-get update
# OS updates
sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y

# Install "base" packages
sudo apt-get install -y xubuntu-desktop ubuntu-restricted-extras

# Switch Plymouth theme from Xubuntu to default 
sudo update-alternatives --config default.plymouth
sudo update-initramfs -u

# Install packages from third party software channels
sudo add-apt-repository -y ppa:webupd8team/sublime-text-2
sudo add-apt-repository -y ppa:webupd8team/atom
sudo add-apt-repository -y ppa:webupd8team/brackets
sudo add-apt-repository -y ppa:jerzy-kozera/zeal-ppa

sudo apt-get update
sudo apt-get install sublime-text atom brackets zeal

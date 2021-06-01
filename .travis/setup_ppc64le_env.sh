#!/bin/bash

set -ev

# install needed packages
sudo apt-get -y install build-essential gem make cmake ruby-dev
#sudo apt-get -y install zlib1g zlib1g-dev

# setup bundler
#sudo gem update --system

sudo gem install bundler

export PATH=$PATH:/usr/local/bin

echo "Ruby, RubyGems, bundler version"
sudo ruby --version 
sudo gem --version
sudo bundler --version

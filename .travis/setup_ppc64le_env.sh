#!/bin/bash

set -ev

# install needed packages
sudo apt-get -y install build-essential gem make cmake ruby-dev
#sudo apt-get -y install zlib1g zlib1g-dev

# setup bundler
#sudo gem update --system

sudo gem install bundler

echo "Ruby, RubyGems version"
sudo ruby --version 
sudo gem --version

echo "Bundler declared in Gemfile.lock"
sudo grep -A 1 "BUNDLED WITH" Gemfile.lock

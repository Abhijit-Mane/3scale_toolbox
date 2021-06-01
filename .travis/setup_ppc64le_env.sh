#!/bin/bash

set -ev

# install needed packages
sudo apt-get -y install build-essential gem make cmake
#sudo apt-get -y install ruby-dev
#sudo apt-get -y install zlib1g zlib1g-dev

# setup bundler
#sudo gem update --system

#sudo gem install bundler
#sudo gem install bundler -v '2.1.4'

echo "Ruby, RubyGems version"
sudo ruby --version 
sudo gem --version

echo "Bundler declared in Gemfile.lock"
sudo grep -A 1 "BUNDLED WITH" Gemfile.lock




###############
# The script below works
sudo apt-get -y install build-essential gem make cmake
sudo gem install bundler -v '2.1.4'
###############

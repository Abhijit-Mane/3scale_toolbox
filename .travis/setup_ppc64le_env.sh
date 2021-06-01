#!/bin/bash

set -ev

# install needed packages
sudo apt-get -y install build-essential ruby-dev

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
# just 2 lines below are enough & it works
sudo apt-get -y install build-essential gem make cmake
sudo gem install bundler -v '2.1.4'
###############

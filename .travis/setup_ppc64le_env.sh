#!/bin/bash

set -ev

# install needed packages
sudo apt-get -y install build-essential gem make cmake ruby-dev zlib.ppc64le zlib-devel.ppc64le

# setup bundler
sudo gem update --system
sudo gem uninstall bundler
sudo rm /usr/local/bin/bundle  || true
sudo rm /usr/local/bin/bundler || true
sudo gem install bundler

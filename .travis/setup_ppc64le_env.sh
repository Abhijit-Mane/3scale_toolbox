#!/bin/bash

set -ev

# install needed packages
apt-get -y install build-essential gem make cmake ruby-dev
#apt-get -y install zlib1g zlib1g-dev

# setup bundler
gem update --system
gem uninstall bundler
rm /usr/local/bin/bundle  || true
rm /usr/local/bin/bundler || true
gem install bundler

#!/usr/bin/env bash

set -e

echo "Uninstalling ruby dependencies..."
sudo gem uninstall i2c
sudo gem uninstall rmagick
sudo gem uninstall SSD1306

echo "Uninstalling system level dependencies..."
sudo apt-get autoremove -y ruby \
ruby-dev \
rubygems-integration \
build-essential \
bundler \
g++ \
imagemagick \
libmagickcore-dev \
libmagickwand-dev

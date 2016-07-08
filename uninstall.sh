#!/usr/bin/env bash
# Copyright Jacob Killelea <Jkillelea@protonmail.ch>

set -e

echo "Uninstalling ruby dependencies..."
sudo gem uninstall SSD1306
sudo gem uninstall rmagick
sudo gem uninstall i2c

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

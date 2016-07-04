#!/usr/bin/env bash

set -e

echo "Installing system level dependencies..."
sudo apt install -y ruby \
ruby-dev \
rubygems \
rubygems-integration \
build-essential \
bundler \
g++ \
imagemagick \
libmagickcore-dev \
libmagickwand-dev

bundle install

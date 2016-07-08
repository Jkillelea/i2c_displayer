#!/usr/bin/env bash
# Copyright Jacob Killelea <Jkillelea@protonmail.ch>

set -e

echo "Installing system level dependencies..."
sudo apt-get install -y ruby \
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

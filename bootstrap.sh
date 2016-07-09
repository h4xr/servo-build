#!/usr/bin/env bash

echo "Setting up build system"
apt-get update
apt-get install -y  git curl freeglut3-dev autoconf \
libfreetype6-dev libgl1-mesa-dri libglib2.0-dev xorg-dev \
gperf g++ build-essential python python-dev cmake python-virtualenv \
libssl-dev libbz2-dev libxmu6 libxmu-dev python-pip \
libglu1-mesa-dev libgles2-mesa-dev libegl1-mesa-dev libdbus-1-dev
pip install dbus-python
echo "Cloning servo"
git clone https://github.com/servo/servo
cd servo
echo "Performing a test build and setting up system"
./mach build --dev


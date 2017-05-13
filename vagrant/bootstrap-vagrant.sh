#!/usr/bin/env bash

cd /home/vagrant
sudo gem install bundler

source /home/vagrant/.bashrc
source /home/vagrant/.profile

cd /vagrant/
bundle install

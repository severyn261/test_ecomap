#!/bin/bash

sudo apt-get update
sudo apt-get install mysql-server -y
sudo apt-get install libmysqlclient-dev -y && sudo bash ecomap/db/ecomap/dump.sh
sudo apt-get install -y apache2
sudo apt-get install libapache2-mod-wsgi -y
sudo apt-get install python-dev -y
sudo apt-get install memcached -y
sudo apt-get install python-pip -y
sudo apt-get install libxml2-dev libxslt-dev libssl-dev-y
sudo apt-get install libxml2-dev libxslt-dev python-dev -y
sudo apt-get install libgirepository1.0-dev -y
sudo apt-get install libcairo2-dev libjpeg-dev libgif-dev -y

sudo pip install -r requirements.txt

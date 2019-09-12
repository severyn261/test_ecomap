#!/bin/bash

sudo apt-get update && echo 'success' && sleep 3s;
sudo apt-get install mysql-server -y && echo 'success' && sleep 3s;
sudo apt-get install libmysqlclient-dev -y && sudo bash ecomap/db/ecomap/dump.sh  && echo 'success' && sleep 3s;
sudo apt-get install -y apache2 && echo 'success' && sleep 3s;
sudo apt-get install libapache2-mod-wsgi -y && echo 'success' && sleep 3s;
sudo apt-get install libapache2-mod-wsgi python-dev -y  && echo 'success' && sleep 3s;
sudo apt-get install memcached -y  && echo 'success' && sleep 3s;
sudo apt-get install python-pip -y  && echo 'success' && sleep 3s;
sudo apt-get install libxml2-dev libxslt-dev libssl-dev-y  && echo 'success' && sleep 3s;
sudo apt-get install libxml2-dev libxslt-dev python-dev -y  && echo 'success' && sleep 3s;
sudo apt-get install libgirepository1.0-dev -y  && echo 'success' && sleep 3s;
sudo apt-get install libcairo2-dev libjpeg-dev libgif-dev -y  && echo 'success' && sleep 3s;
sudo apt-get install libhashkit2 libhashkit-dev -y && echo 'success' && sleep 3s;
sudo apt-get install libmemcached-dev -y  && echo 'success' && sleep 3s;
sudo apt-get install libmemcached11 -y  && echo 'success' && sleep 3s;
sudo apt-get install libmemcachedutil2 -y  && echo 'success' && sleep 3s;
sudo apt-get install libsasl2-dev -y && echo 'success' && sleep 3s;

sudo pip install -r requirements.txt

#sudo bash ~/home/workspace/test_ecomap/install/run.sh
echo "Done"

#!/bin/bash

sudo apt-get update
sudo apt-get install -y mysql-server \
            libmysqlclient-dev \
            apache2 \
            libapache2-mod-wsgi \
            libapache2-mod-wsgi python-dev \
            memcached \
            python-pip \
            libxml2-dev \
            libxslt-dev \
            libssl-dev \
            python-dev \
            libgirepository1.0-dev \
            libcairo2-dev \
            libjpeg-dev \
            libgif-dev \
            libhashkit2 \
            libhashkit-dev \
            libmemcached-dev \
            libmemcached11 \
            libmemcachedutil2 \
            libsasl2-dev

sudo pip install -r /home/ubuntu/home/workspace/test_ecomap/requirements.txt

sleep 10s
sudo a2dissite 000-default
sudo systemctl reload apache2
sudo sed -i "s/ecomapIP/$(echo "$(hostname -I)" | sed 's/^2.//;s/.$//')/g" /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/_ecomap.apache.conf
sudo cp /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/_ecomap.apache.conf /etc/apache2/sites-available/ecomap.conf
sudo a2ensite ecomap
sudo systemctl reload apache2

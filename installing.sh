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

echo '================ SUCCSSESFULL =================='

sudo pip install -r requirements.txt

echo "Done"

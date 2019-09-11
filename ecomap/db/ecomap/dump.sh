#!/bin/bash

sudo echo '[mysqld] default-character-set = utf8 init_connect=‘SET collation_connection = utf8_unicode_ci’ character-set-server = utf8 collation-server = utf8_unicode_ci [client] default-character-set = utf8' >> /etc/mysql/my.cnf
sudo echo "GRANT ALL PRIVILEGES ON *.* TO 'cat'@'%' IDENTIFIED BY '1qaz2wsx3edc' WITH GRANT OPTION;" | sudo mysql;
sudo echo "GRANT ALL PRIVILEGES ON *.* TO 'dog'@'%' IDENTIFIED BY 'k3i4i5lm6m6' WITH GRANT OPTION;" | sudo mysql;
sudo echo "FLUSH PRIVILEGES;" | sudo mysql;
sudo echo "CREATE DATABASE ecomap_db CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | sudo mysql;
#sudo echo "USE ecomap_db;" | sudo mysql;
sudo mysql ecomap_db < /home/ubuntu/home/workspace/test_ecomap/ecomap/db/ecomap/CREATE_DB.sql
sudo mysql ecomap_db < /home/ubuntu/home/workspace/test_ecomap/ecomap/db/ecomap/INSERT_DATA.sql

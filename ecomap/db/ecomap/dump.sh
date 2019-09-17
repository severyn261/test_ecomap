#!/bin/bash

sudo echo '[mysqld] default-character-set = utf8 init_connect=‘SET collation_connection = utf8_unicode_ci’ character-set-server = utf8 collation-server = utf8_unicode_ci [client] default-character-set = utf8' >> /etc/mysql/my.cnf
sudo echo "GRANT ALL ON `%`.* TO cat@`%`;" | sudo mysql;
sudo echo "GRANT ALL ON `%`.* TO dog@`%`;" | sudo mysql;
sudo echo "FLUSH PRIVILEGES;" | sudo mysql;
sudo echo "CREATE DATABASE ecomap_db CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | sudo mysql;
#sudo echo "USE ecomap_db;" | sudo mysql;
sudo mysql ecomap_db < /home/ubuntu/home/workspace/test_ecomap/ecomap/db/ecomap/CREATE_DB.sql
sudo mysql ecomap_db < /home/ubuntu/home/workspace/test_ecomap/ecomap/db/ecomap/INSERT_DATA.sql

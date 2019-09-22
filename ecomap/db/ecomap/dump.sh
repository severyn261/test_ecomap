#!/bin/bash

sudo echo "GRANT ALL ON `%`.* TO cat@`%`;" | mysql -h address -P portdb -u username -puserpass;
sudo echo "GRANT ALL ON `%`.* TO dog@`%`;" | mysql -h address -P portdb -u username -puserpass;
sudo echo "FLUSH PRIVILEGES;" | mysql -h address -P portdb -u username -puserpass;
sudo echo "CREATE DATABASE dbname CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mysql -h address -P portdb -u username -puserpass;
sudo mysql -h address -P portdb -u username -puserpass dbname < /home/ubuntu/home/workspace/test_ecomap/ecomap/db/ecomap/CREATE_DB.sql
sudo mysql -h address -P portdb -u username -puserpass dbname < /home/ubuntu/home/workspace/test_ecomap/ecomap/db/ecomap/INSERT_DATA.sql

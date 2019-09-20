#!/bin/bash

sudo a2dissite 000-default
sudo systemctl reload apache2
sudo cp /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/_ecomap.apache.conf /etc/apache2/sites-available/ecomap.conf
sudo a2ensite ecomap
sudo systemctl reload apache2
sudo echo "ALL TASKS ARE OK" > /home/ubuntu/README.TXT

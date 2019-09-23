#!/bin/bash
# sudo apt-get install -y wget unzip
sudo adduser ecomap
mkdir /home/ubuntu/home
mkdir /home/ubuntu/home/workspace
# mkdir /home/ubuntu/home/workspace/test_ecomap
sudo echo '================ SUCCSSESFULL ==================' >>/home/ubuntu/test.txt
cd /home/ubuntu/home/workspace/
# wget https://ecomap-new-version.s3.us-east-2.amazonaws.com/travis-334ebe73e5aff7364e351a394385792d4dbd1979-1569076156.zip
# unzip -o travis-334ebe73e5aff7364e351a394385792d4dbd1979-1569076156.zip
git clone https://github.com/severyn261/test_ecomap.git

sudo chown ubuntu:ubuntu -R /home/ubuntu/home &
sudo chmod 777 -R /home/ubuntu/home
sleep 2s
sudo sed -i 's/address/ecomap-db.cjc2siunmkts.us-east-2.rds.amazonaws.com/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/_configvars.conf
sudo sed -i 's/portdb/3306/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/_configvars.conf
sudo sed -i 's/address/ecomap-db.cjc2siunmkts.us-east-2.rds.amazonaws.com/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/db.conf
sudo sed -i 's/portdb/3306/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/db.conf
sudo sed -i 's/address/ecomap-db.cjc2siunmkts.us-east-2.rds.amazonaws.com/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/db/ecomap/dump.sh
sudo sed -i 's/portdb/3306/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/db/ecomap/dump.sh
sudo sed -i 's/username/ecomap/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/db/ecomap/dump.sh
sudo sed -i 's/userpass/135790ecomap/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/db/ecomap/dump.sh
sudo sed -i 's/dbname/ecomap_db/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/_configvars.conf
sudo sed -i 's/dbname/ecomap_db/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/db.conf
sudo sed -i 's/dbname/ecomap_db/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/db/ecomap/dump.sh
cd /home/ubuntu/home/workspace/test_ecomap/
sudo rm -rf .travis.yml main.tf variables.tf
sudo echo '================ SUCCSSESFULL  git==================' >>/home/ubuntu/test.txt
sudo bash /home/ubuntu/home/workspace/test_ecomap/installing.sh


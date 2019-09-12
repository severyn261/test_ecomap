#!/bin/bash

sudo a2enmod wsgi
sudo a2dissite 000-default
sudo systemctl reload apache2 || echo 'VSE PROPALO'
sudo cp ~/home/workspace/test_ecomap/ecomap/etc/_ecomap.apache.conf /etc/apache2/sites-avalible/ecomap.conf
sudo a2ensite ecomap
sudo systemctl reload apache2 || echo 'VSE PROPALOOO'

python ~/home/workspace/test_ecomap/ecomap/www/views.py || \
sudo cp app.py ~/home/workspace/test_ecomap/ecomap/src/python/ecomap/app.py; \
sudo cp __init__.py /usr/local/lib/python2.7/dist-packages/flask_autodoc/__init__.py; \
sudo cp jinja2ext.py /usr/local/lib/python2.7/dist-packages/flask_cache/jinja2ext.py;



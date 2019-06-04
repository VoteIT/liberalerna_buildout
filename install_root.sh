#!/bin/bash
#Ment to be run as root after buildout is done. Will obtain cert and install on nginx debian

cd /etc/nginx
ln -s /home/voteit/srv/liberalerna_buildout/etc/nginx.conf ./sites-available/liberalerna.conf
cd sites-enabled
ln -s ../sites-available/liberalerna.conf

service nginx stop
certbot certonly --standalone -d liberalerna.voteit.se
service nginx start

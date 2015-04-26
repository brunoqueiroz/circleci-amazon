#!/bin/bash
cd /tmp
rm -Rf dist
tar -zxvf modelo-front.tar
sudo rm -Rf /usr/share/nginx/html/*
sudo cp -R dist/* /usr/share/nginx/html
exit
#!/bin/bash
cd /tmp
rm -Rf dist
tar -zxvf modelo-front.tar
rm -Rf /usr/share/nginx/html/*
cp -R dist/* /usr/share/nginx/html
exit
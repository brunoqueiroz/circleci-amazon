sudo su -
cd /tmp
tar -zxvf modelo-front.tar
rm -Rf /usr/share/nginx/html/*
mv -v dist/* /usr/share/nginx/html
rm -Rf modelo-front.tar
rm -Rf dist
#!/bin/bash
sudo docker ps | grep brunoqueiroz/modelo-front | awk '{print $1}' | xargs docker stop
sudo docker rm web
sudo docker pull brunoqueiroz/modelo-front
sudo docker run -d -p 80:80 --name web brunoqueiroz/modelo-front \nginx -g "daemon off;"
exit
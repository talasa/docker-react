#! /bin/sh
set -x
sudo docker run -p 3000:3000 -it -v /home/node/node_modules -v `pwd`:/home/node talasa/web-app

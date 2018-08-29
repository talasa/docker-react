#! /bin/sh
set -x
sudo docker build -f Dockerfile.dev -t talasa/web-app .

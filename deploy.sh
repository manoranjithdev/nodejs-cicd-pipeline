#!/bin/bash
APP=nodejs-app
if docker ps -a | grep -w $APP; then
docker stop $APP
docker rm $APP
fi
if docker images | grep -w $APP; then
docker rmi -f $APP
fi
docker build -t $APP .
docker run -itd --name $APP -p 3000:3000 $APP

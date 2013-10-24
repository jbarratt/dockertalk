#!/bin/bash

if [ $# -eq 0 ]
then
    echo "Usage: ./rebuilt.sh <tag>"
    exit
fi

if [[ $EUID -ne 0 ]]; then
    echo "Docker needs sudo or root."
    exit
fi

OLDCONTAINER=$(docker ps | grep $1 | cut -d ' ' -f 1)

if [ -z $OLDCONTAINER ]
then
    echo "No container found tagged $1"
    exit
fi

docker build -t $1 .
docker stop $OLDCONTAINER
docker run -d $1

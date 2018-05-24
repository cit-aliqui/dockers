#!/bin/bash

if [ -z "$1" ]; then 
	echo "Pass the directory to build"
	exit 1
fi
dir=$1
IMAGE=$(cat $1/Dockerfile | head -1 | sed -e 's/#//')
cd $dir
docker build -t $IMAGE . && docker push $IMAGE

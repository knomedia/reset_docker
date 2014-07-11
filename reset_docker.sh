#!/bin/bash

# credit where it's due: http://jimhoskins.com/2013/07/27/remove-untagged-docker-images.html

# stop any running containers
docker stop $(docker ps -a -q)

# remove all containers
docker rm $(docker ps -a -q) 

# remove all images that aren't tagged
docker rmi $(docker images | grep "^<none>" | awk "{print $3}") 

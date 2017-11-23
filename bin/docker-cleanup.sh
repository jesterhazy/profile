#!/bin/bash

docker rm  $(docker ps -f status=exited -f status=dead -aq)
docker rmi $(docker images -f 'dangling=true' -aq)

#!/bin/bash
sudo docker rm $(docker ps -a -q)
sudo docker-compose down -v
sudo docker build -t karimullin_consumer -f Dockerfile_consumer .
sudo docker build -t karimullin_producer -f Dockerfile_producer .
sudo docker build -t karimullin_mysql -f Dockerfile_mysql .
sudo docker-compose -p 'karimullin_proj' up --force-recreate
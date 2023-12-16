#!/bin/bash
sudo docker rm $(docker ps -a -q)
sudo docker build -t karimullin_task1 .

#docker tag karimullin_task1:v1.0 sexualwhitechocolate/karimullin_task1:v1.0
#docker login
#docker push sexualwhitechocolate/karimullin_task1:v1.0

sudo docker run --rm -v karimullin_task1_volume:/ISD_BIT_Lab2 karimullin_task1 /bin/bash /ISD_BIT_Lab2/task1/run_from_docker.sh
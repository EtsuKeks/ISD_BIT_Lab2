#!/bin/bash

sudo docker build -t karimullin_task1 .

#docker tag karimullin_task1:v1.0 sexualwhitechocolate/karimullin_task1:v1.0
#docker login
#docker push sexualwhitechocolate/karimullin_task1:v1.0

sudo docker run --rm -d -v karimullin_task1_volume:/ISD_BIT_Lab2 -t karimullin_task1 karimullin_task1
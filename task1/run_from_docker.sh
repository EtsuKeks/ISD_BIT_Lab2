#!/bin/bash
cd ISD_BIT_Lab2/task1/Consumer/
nohup java -jar Consumer.jar &
cd ..
cd Producer/
nohup java -jar Producer.jar &
sleep 20
cd ..
cd Consumer/
cat db.txt
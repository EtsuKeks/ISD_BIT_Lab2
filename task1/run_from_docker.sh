#!/bin/bash
nohup java -jar /ISD_BIT_Lab2/task1/Consumer/Consumer.jar &
sleep 1
nohup java -jar /ISD_BIT_Lab2/task1/Producer/Producer.jar &
sleep 20
cat /ISD_BIT_Lab2/task1/Consumer/db.txt
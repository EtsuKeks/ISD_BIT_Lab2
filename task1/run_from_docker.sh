#!/bin/bash
nohup java -jar /ISD_BIT_Lab2/task1/Consumer/Consumer.jar &
nohup java -jar /ISD_BIT_Lab2/task1/Producer/Producer.jar &
sleep 20
cat ISD_BIT_Lab2/task1/Consumer/db.txt
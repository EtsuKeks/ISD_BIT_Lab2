#!/bin/bash
sudo docker rm $(docker ps -a -q)
sudo docker-compose down -v
sudo docker build -t karimullin_consumer -f Dockerfile_consumer .
sudo docker build -t karimullin_producer -f Dockerfile_producer .
sudo docker build -t karimullin_mysql -f Dockerfile_mysql .
sudo docker-compose -p 'karimullin_proj' up --force-recreate

# One can check that mysql container does work:
# After running the script above, in a separate terminal, do:
# docker exec -it mysql /bin/bash
# mysql -uroot -p
# type in: root
# USE mydatabase;
# SELECT * FROM mytable;

# sample example of output:
#mysql> SELECT * FROM mytable;
#+------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
#| timestamp                    | jsoned_object                                                                                                                              |
#+------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
#| Sun Dec 17 18:33:58 UTC 2023 | {
#    "date": Sun Dec 17 18:33:51 UTC 2023
#    "username": "351251tr223t"
#    "password": "523rtr5246"
#    "somenumbers": [137,146,186]
#}
# |
#| Sun Dec 17 18:34:07 UTC 2023 | {
#    "date": Sun Dec 17 18:34:01 UTC 2023
#    "username": "q21"
#    "password": "6523t1"
#    "somenumbers": [135,181,105]
#}
#              |
#| Sun Dec 17 18:34:17 UTC 2023 | {
#    "date": Sun Dec 17 18:34:11 UTC 2023
#    "username": "w3te536t12"
#    "password": "r5t"
#    "somenumbers": [143,139,160]
#}
#          |
#+------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
#3 rows in set (0.00 sec)
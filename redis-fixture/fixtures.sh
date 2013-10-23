#!/bin/bash

/usr/bin/redis-server &
for ((i=1; i <=100; i++))
do
    redis-cli rpush numbers $i
done
redis-cli shutdown

#!/bin/bash

docker build -t alexhorner/phpwebserver .
docker run -p 8004:80 -dit --rm alexhorner/phpwebserver
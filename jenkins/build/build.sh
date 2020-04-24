#!/bin/bash

##copy new jar to build location

cp -f java-app/target/*.jar jenkins/build/


echo "***********Build docker image**********"

cd jenkins/build/ && docker-compose -f  docker-compose-build.yml build --no-cache




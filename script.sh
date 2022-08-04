#!/bin/bash

docker pull node:16
docker pull mongo:3.1
docker pull owasp/zap2docker-stable
docker pull owasp/dependency-check
docker pull owasp/modsecurity-crs
docker pull mysql
docker pull postgres
docker pull php

exit

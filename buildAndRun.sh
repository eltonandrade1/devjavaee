#!/bin/sh
mvn clean package && docker build -t com.elton/javaee .
docker rm -f javaee || true && docker run -d -p 8080:8080 -p 4848:4848 --name javaee com.elton/javaee
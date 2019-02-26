@echo off
call mvn clean package
call docker build -t com.elton/javaee .
call docker rm -f javaee
call docker run -d -p 8080:8080 -p 4848:4848 --name javaee com.elton/javaee
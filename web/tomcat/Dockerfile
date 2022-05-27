# Betoffice Docker Build File
# Important: Network and timezone!
#

FROM tomcat:9.0.46-jdk16-openjdk-buster
# 2021-05-14 Spring unterstuetzt den neuen jakarta Package Namen bisher nicht.
# FROM tomcat:10.0.6-jdk16-openjdk-buster

# docker build -t betoffice/tomcat:1.3.1 .
# docker run --net betoffice -e TZ="Europe/Berlin" --expose 8080 -p 8080:8080 --name botomcat-1.3.1 -d betoffice/tomcat:1.3.1
# docker exec -it botomcat /bin/bash

LABEL maintainer="Andre Winkler"
LABEL mail="andre.winkler@web.de"
LABEL version="betoffice-1.3.1"

COPY betoffice-jweb-1.3.1.war /usr/local/tomcat/webapps/betoffice-jweb.war
COPY context.xml /usr/local/tomcat/conf
COPY mariadb-java-client-2.7.1.jar  /usr/local/tomcat/lib

EXPOSE 8080

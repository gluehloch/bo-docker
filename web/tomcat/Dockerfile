# Betoffice Docker Build File
# Important: Network and timezone!
#

FROM tomcat:9.0.46-jdk16-openjdk-buster
# 2021-05-14 Spring unterstuetzt den neuen jakarta Package Namen bisher nicht.
# FROM tomcat:10.0.6-jdk16-openjdk-buster

# docker build -t betoffice:1.4.1-SNAP .
# docker run --net betoffice -e TZ="Europe/Berlin" --expose 8080 -p 8080:8080 --name botomcat-1.4.1-SNAP -d betoffice:1.4.1-SNAP
# docker exec -it botomcat /bin/bash

LABEL maintainer="Andre Winkler"
LABEL mail="andre.winkler@web.de"
LABEL version="betoffice-1.4.1-SNAP"

COPY betoffice-jweb-1.4.1-SNAPSHOT.war /usr/local/tomcat/webapps/betoffice-jweb.war
COPY context.xml /usr/local/tomcat/conf
COPY mariadb-java-client-3.0.8.jar  /usr/local/tomcat/lib

EXPOSE 8080

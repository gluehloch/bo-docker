# Betoffice Docker Build File
# Important: Network and timezone!
#

FROM tomcat:9.0.37-jdk14-openjdk-buster

# docker build -t betoffice/tomcat:1.2.4 .
# docker run --net betoffice -e TZ="Europe/Berlin" --expose 8080 -p 8080:8080 --name botomcat-1.2.5 -d betoffice/tomcat:1.2.5
# docker exec -it botomcat /bin/bash

LABEL maintainer="Andre Winkler"
LABEL mail="andre.winkler@web.de"
LABEL version="betoffice-1.2.4"

# COPY betoffice-jweb-1.2.4-SNAPSHOT.war /usr/local/tomcat/webapps/betoffice-jweb.war
# COPY betoffice-jweb.war /usr/local/tomcat/webapps/betoffice-jweb.war
COPY betoffice-jweb-1.2.5.war /usr/local/tomcat/webapps/betoffice-jweb.war
COPY context.xml /usr/local/tomcat/conf
COPY mariadb-java-client-2.6.1.jar  /usr/local/tomcat/lib

EXPOSE 8080

# Betoffice Docker Build File
# Important: Network and timezone!
#

FROM tomcat:10.1.18-jdk21

# docker build -t betoffice:1.4.1-SNAP .
# docker run --net betoffice -e TZ="Europe/Berlin" --expose 8080 -p 8080:8080 --name botomcat-LEAST -d betoffice:1.4.1-SNAP
# docker exec -it botomcat /bin/bash

LABEL maintainer="Andre Winkler"
LABEL mail="andre.winkler@web.de"
LABEL version="betoffice-1.4.1"

COPY betoffice-jweb-1.4.1.war /usr/local/tomcat/webapps/betoffice-jweb.war
COPY context.xml /usr/local/tomcat/conf
COPY mariadb-java-client-3.0.8.jar  /usr/local/tomcat/lib

EXPOSE 8080

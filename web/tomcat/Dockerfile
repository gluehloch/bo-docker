# docker build -t botomcat:1.2.4 .
# Namensvorschlaege: botomcat
#
# docker run -e TZ="Europe/Berlin" --expose 8080 -p 8080:8080 --name botomcat -d betoffice/tomcat:1.2.4
#
FROM tomcat:9.0.37-jdk14-openjdk-buster

LABEL maintainer="Andre Winkler"
LABEL mail="andre.winkler@web.de"
LABEL version="betoffice-1.2.4"

# COPY betoffice-jweb-1.2.4-SNAPSHOT.war /usr/local/tomcat/webapps/betoffice-jweb.war
# COPY betoffice-jweb.war /usr/local/tomcat/webapps/betoffice-jweb.war
COPY betoffice-jweb-1.2.4.war /usr/local/tomcat/webapps/betoffice-jweb.war
COPY context.xml /usr/local/tomcat/conf
# COPY mysql-connector-java-5.1.31.jar /usr/local/tomcat/lib
COPY mariadb-java-client-2.6.1.jar  /usr/local/tomcat/lib

EXPOSE 8080

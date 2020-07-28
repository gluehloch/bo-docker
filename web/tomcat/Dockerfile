# docker build -t botomcat:1.2.4 .
# Namensvorschlaege: botomcat
#
# docker run -e TZ="Europe/Berlin" --expose 8080 -p 8080:8080 --name botomcat-1.2.4 -d botomcat:1.2.4
#
FROM tomcat:9.0.21-jdk11-openjdk

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

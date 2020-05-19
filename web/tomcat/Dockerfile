# docker build -t betoffice/tomcat:1.3.0-SNAPSHOT .
# docker run --net dev --expose 8080 -p 8080:8080 --name botomcat -d betoffice/botomcat:1.3.0-SNAPSHOT

FROM tomcat:10.0.0-jdk14-openjdk-buster

LABEL maintainer="Andre Winkler"
LABEL mail="andre.winkler@web.de"

COPY betoffice-jweb-1.3.0-SNAPSHOT.war /usr/local/tomcat/webapps/betoffice-jweb.war
COPY context.xml /usr/local/tomcat/conf
COPY mysql-connector-java-5.1.31.jar /usr/local/tomcat/lib

EXPOSE 8080

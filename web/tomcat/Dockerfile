# docker build -t betoffice/tomcat:1.2.3-SNAPSHOT .
# Namensvorschlaege: botomcat / botom
# docker run --expose 8080 -p 8080:8080 --name botomcat-1.2.2 -d betoffice/tomcat:1.2.3-SNAPSHOT

FROM tomcat:9.0.16-jre11-slim

LABEL maintainer="Andre Winkler"
LABEL mail="andre.winkler@web.de"

COPY betoffice-jweb-1.2.3.war /usr/local/tomcat/webapps/betoffice-jweb.war
COPY context.xml /usr/local/tomcat/conf
COPY mysql-connector-java-5.1.31.jar /usr/local/tomcat/lib

EXPOSE 8080

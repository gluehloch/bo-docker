# docker build -t botomcat:1.1.0 .
# Namensvorschlaege: botomcat / botom
# docker run --expose 8080 -p 8080:8080 --name botomcat -d botomcat:1.1.0

FROM tomcat:8.5.24

LABEL maintainer="Andre Winkler"
LABEL mail="andre.winkler@web.de"

COPY betoffice-jweb-1.1.2.war /usr/local/tomcat/webapps/betoffice-jweb.war
COPY context.xml /usr/local/tomcat/conf
COPY mysql-connector-java-5.1.31.jar /usr/local/tomcat/lib

EXPOSE 8080

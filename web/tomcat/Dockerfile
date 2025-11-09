# Betoffice Docker Build File
# Important: Network and timezone!
#

FROM tomcat:jdk25-temurin-noble 

# docker build -t betoffice:1.5.1 .
# be aware of the database container: mariadb11 vs mariadb / also see betoffice.properties
# docker run --net betoffice -e TZ="Europe/Berlin" --expose 8080 -p 8080:8080 --name botomcat-1.5.1 -d betoffice:1.5.1
# Validate the container: GET http://localhost:8080/betoffice-war/office/ping
# docker commit botomcat-1.5.1 gluehloch/betoffice:1.5.1
# docker login
# docker push gluehloch/betoffice:1.5.1

# docker exec -it botomcat /bin/bash
ENV AWTOOLS_CONFDIR=/root
ENV SPRING_PROFILES_ACTIVE=production

LABEL maintainer="Andre Winkler"
LABEL mail="andre.winkler@web.de"
LABEL version="betoffice-1.5.1"

COPY betoffice.properties /root/betoffice/betoffice.properties
COPY betoffice-war-1.5.1.war /usr/local/tomcat/webapps/betoffice-war.war

EXPOSE 8080

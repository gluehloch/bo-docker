# Betoffice Docker Build File
# Important: Network and timezone!
#

FROM tomcat:jdk25-temurin-noble 

# docker build -t betoffice:1.5.1SNAPSHOT .
# docker run --net betoffice -e TZ="Europe/Berlin" --expose 8080 -p 8080:8080 --name botomcat-1.5.1 -d betoffice:1.5.1
# docker commit botomcat-1.5.1 gluehloch/betoffice:1.5.1
# docker login
# docker push gluehloch/betoffice:1.5.1

# docker exec -it botomcat /bin/bash

LABEL maintainer="Andre Winkler"
LABEL mail="andre.winkler@web.de"
LABEL version="betoffice-1.5.1"

COPY betoffice-war-1.5.1.war /usr/local/tomcat/webapps/betoffice-war.war
COPY .betoffice.properties /root/.betoffice.properties

EXPOSE 8080

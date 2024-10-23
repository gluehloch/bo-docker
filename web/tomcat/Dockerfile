# Betoffice Docker Build File
# Important: Network and timezone!
#

FROM tomcat:10.1.18-jdk21

# docker build -t betoffice:1.5.1-SNAPSHOT .
# docker run --net betoffice -e TZ="Europe/Berlin" --expose 8080 -p 8080:8080 --name botomcat-1.5.1-SNAPSHOT -d betoffice:1.5.1-SNAPSHOT
# docker commit botomcat-1.5.1-SNAPSHOT gluehloch/betoffice:1.5.1-SNAPSHOT
# docker login
# docker push gluehloch/betoffice:1.5.1-SNAPSHOT

# docker exec -it botomcat /bin/bash

LABEL maintainer="Andre Winkler"
LABEL mail="andre.winkler@web.de"
LABEL version="betoffice-1.5.0"

COPY betoffice-war-1.5.1-SNAPSHOT.war /usr/local/tomcat/webapps/betoffice-war.war
COPY .betoffice.properties /root/.betoffice.properties

EXPOSE 8080

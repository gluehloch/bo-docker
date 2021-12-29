Disclaimer: This site is under heavy construction/elaboration/etc./etc.

# PULL The Image

Does not work anymore:
```
docker pull mariadb/latest
```

That´s the way you do it:
```
docker run --net betoffice -p 3306:3306  --name mariadb -e MYSQL_ALLOW_EMPTY_PASSWORD=true -d mariadb:latest
```

## Build an image
```
docker build .
docker build . -t betoffice/botomcat:1.3.0-SNAPSHOT
```
## Run the image
```
docker run --net betoffice --expose 127.0.0.1:8080:8080 betoffice/botomcat:1.3.0-SNAPSHOT 
```

# TAG you image

https://docs.docker.com/engine/getstarted/step_six/
docker images

```
docker tag <imageid> <your-image-id>
docker tag <imageid> betoffice/mariadb:latest
docker tag 7d9495d03763 maryatdocker/docker-whale:latest
```

# Run the image

    ACHTUNG: Die IP Adresse ist anzupassen. So werden die Ports nur auf LOCALHOST freigeschaltet. Je nach dem wo die Docker-Machine läuft.

```
docker run --name bodata -p 127.0.0.1:3306:3306
    -e MYSQL_ALLOW_EMPTY_PASSWORD=true -d mariadb:latest
```

### botomcat-1.1.0

-- Nach Vorbereitung des Images, commit ...
-- Die Adresse 127.0.0.1 ist nicht korrekt, wenn die Instanz von 'außen' erreichbar sein soll.
-- Besser ist die IP Adresse des Containers: Also z.B. 192.168.99.100

### Command Line Access / Deploy other WARs
Den RegistrationService 

```
docker exec -it <botomcat-1.3.0> bash
docker cp .\.register.properties <botomcat-1.3.0>:/root
docker cp .\target\registrationservice-0.3.0-SNAPSHOT.war <botomcat-1.3.0>:/usr/local/tomcat/webapps/registrationservice.war 
```


### Config the MariaDB

docker exec -it mariadbtest bash

* Install the editor *

Auf der Bash in dem Docker Container arbeiten:

docker exec --it testtest bash

==> Per command line
```
apt-get update
apt-get install vim
```

==> Here with a docker file
```
FROM  confluent/postgres-bw:0.1

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]
```

TODO: Der nächste Abschnitt muss überarbeitet werden. Ist vermutlich veraltet.

In der MariaDB Konfiguration müssen dann noch die folgenden Einstellungen vorgenommen werden.
Die folgenden Zeilen müssen kommentiert bleiben.
```
[mysqld]
    ...
    #skip-networking
    ...
    #bind-address = <some ip-address>
```

```
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
```

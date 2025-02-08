```
docker container create --name my-alpine -it alpine:latest /bin/sh
docker container create --name my-alpine -it alpine/java:21-jdk:latest /bin/sh
```

```
docker pull alpine/java:21-jdk
docker run --name test-jdk21 -it --rm alpinejava:21-jdk
```

```
docker pull maven:3.9.9-eclipse-temurin-21-jammy
docker run --name alpine-mvn  -it  maven:3.9.9-eclipse-temurin-21-jammy
docker exec -it alpine-maven-git bash
```

```
# --rm Entfernt den Container direkt nach verlassen /  
# Mit exit wird der Container verlassen
docker run --name test -it --rm alpine
# 
docker container start -i test
```

alpine/java:21-jdk
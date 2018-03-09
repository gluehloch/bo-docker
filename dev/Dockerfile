# docker build -t bojavadev .
# docker run -it --name java9dev bojavadev:jdk9-1.0 bash

FROM ubuntu:17.10

LABEL maintainer="Andre Winkler"
LABEL mail="andre.winkler@web.de"

ARG MAVEN_VERSION=3.5.2
ARG USER_HOME_DIR="/home/developer"
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/${MAVEN_VERSION}/binaries

RUN apt-get update && apt-get install -y \
  ssh \
  git \
  vim \
  curl \
  openjdk-9-jdk \
  && useradd -m developer

# Maven fails with 'Can't read cryptographic policy directory: unlimited'
# because it looks for $JAVA_HOME/conf/security/policy/unlimited but it is in
# /etc/java-9-openjdk/security/policy/unlimited
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf

RUN mkdir -p /usr/share/maven /usr/share/maven/ref \
  && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c - \
  && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1 \
  && rm -f /tmp/apache-maven.tar.gz \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"

COPY mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh
COPY settings-docker.xml /usr/share/maven/ref/

ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
CMD ["mvn"]

# /etc/ssh/ssh_config
# Host bitbucket.org
#  User andrewinkler
#  IdentityFile /etc/ssh/id_rsa_unfuddle

# git clone git@bitbucket.org:teamwinkler/angular2.git
#

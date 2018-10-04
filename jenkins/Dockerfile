# awtools Jenkins 
#

FROM jenkins/jenkins:lts

LABEL maintainer="Andre Winkler"
LABEL mail="andre.winkler@web.de"

ARG MAVEN_VERSION=3.5.4
ARG USER_HOME_DIR="/home/developer"
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/${MAVEN_VERSION}/binaries

USER root

RUN apt-get update && apt-get install -y  --no-install-recommends \
  vim \
  curl \
  && useradd -m developer

RUN curl -sL https://deb.nodesource.com/setup_10.x -o /tmp/nodesource_setup.sh \
  && chmod u+x /tmp/nodesource_setup.sh \
  && /tmp/nodesource_setup.sh \
  && apt-get install -y --no-install-recommends nodejs

USER jenkins

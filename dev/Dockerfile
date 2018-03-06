# docker build -t bojavadev .
# docker run -it --name bojavadev bojavadev:latest bash

FROM ubuntu:17.10

LABEL maintainer="Andre Winkler"
LABEL mail="andre.winkler@web.de"

RUN apt-get update && apt-get install -y \
  ssh \
  git \
  vim \
  openjdk-9-jdk \
  && useradd -m developer

# /etc/ssh/ssh_config
# Host bitbucket.org
#  User andrewinkler
#  IdentityFile /etc/ssh/id_rsa_unfuddle

# git clone git@bitbucket.org:teamwinkler/angular2.git
#

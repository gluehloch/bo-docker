FROM ubuntu:17.10
MAINTAINER andre.winkler@web.de

RUN apt-get update && apt-get install -y \
  ssh \
  nodejs \
  git

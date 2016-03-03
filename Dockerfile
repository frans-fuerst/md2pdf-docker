FROM ubuntu:15.04

MAINTAINER Frans Fuerst <frans.fuerst@gmail.com>

ADD local_env /tmp/local_env

ENV DEBIAN_FRONTEND noninteractive

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN source /tmp/local_env                                   &&\
    apt-get --yes install apt-utils                         &&\
    apt-get --yes update                                    &&\
    apt-get --yes upgrade

RUN source /tmp/local_env                                   &&\
    apt-get --yes install texlive-xetex texlive-fonts-extra &&\
    apt-get --yes install pandoc npm

RUN source /tmp/local_env                                   &&\
    npm config set loglevel info                            &&\
    npm config set registry=http://registry.npmjs.org/      &&\
    npm install remark


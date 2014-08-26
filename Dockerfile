FROM ubuntu:trusty
MAINTAINER Corbin Uselton corbin@openswimsoftware.com

ENV LANG C.UTF-8

RUN apt-get update
RUN apt-get -y dist-upgrade

RUN apt-get install -y libreadline6 libreadline6-dev software-properties-common sudo

RUN add-apt-repository -y ppa:git-core/ppa

RUN apt-get update
RUN apt-get install -y git-core curl zip unzip wget

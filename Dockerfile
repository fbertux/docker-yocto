FROM ubuntu:trusty

MAINTAINER Fabio Berton <fabio@bertux.com>

RUN apt-get update

RUN apt-get -y upgrade

# Install Yocto Project essential packages.
RUN apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib \
    build-essential chrpath socat

RUN apt-get install openssh-server

RUN mkdir /yocto


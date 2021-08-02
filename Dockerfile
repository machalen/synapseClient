####################################################
#Install synapse in python
#Dockerfile to build a container with synapseclient
#Ubuntu Focal
####################################################
#Build the image based on Ubuntu
FROM ubuntu:focal

#Maintainer and author
MAINTAINER Magdalena Arnal <magdalena.arnalsegura@iit.it>

#Install required libraries in ubuntu
RUN apt-get update && apt-get install --yes build-essential gcc-multilib apt-utils zlib1g-dev \
libbz2-dev perl gzip ncurses-dev libncurses5-dev libbz2-dev \
liblzma-dev libssl-dev libcurl4-openssl-dev libgdbm-dev libnss3-dev libreadline-dev libffi-dev wget \
unzip bzip2 g++

#Install python3
RUN apt-get update && apt-get install --yes python3

#Install synapse
RUN pip3 install pandas
RUN pip3 install pysftp
RUN pip3 install synapseclient

# Cleanup
RUN apt-get clean
RUN apt-get remove --yes --purge build-essential gcc-multilib apt-utils zlib1g-dev

WORKDIR /

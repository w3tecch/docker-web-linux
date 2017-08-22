FROM ubuntu:latest

## Add linux dependencies

### Add sudo
RUN apt-get update
RUN apt-get install -y sudo
RUN rm -rf /var/lib/apt/lists/* 

### Add curl
RUN apt-get update
RUN apt-get install -y curl

### Add bzip2
RUN apt-get install bzip2

### Add Node.js 8.x
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN apt-get install -y nodejs=8.4.0-1nodesource1~xenial1

## Add Node.js dependencies

### Add yarn
RUN npm install -g yarn@0.27.5

### Add bower
RUN npm install -g bower@1.8.0

### Add gulp
RUN npm install -g gulp@3.9.1
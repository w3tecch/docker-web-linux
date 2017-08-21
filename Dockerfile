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
RUN apt-get install -y nodejs

## Add Node.js dependencies

### yarn
RUN npm install -g yarn

### bower
RUN npm install -g bower

### gulp
RUN npm install -g gulp

### grunt-cli
RUN npm install -g grunt-cli
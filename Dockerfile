FROM ubuntu:latest

## Add sudo command
RUN apt-get update
RUN apt-get install -y sudo
RUN rm -rf /var/lib/apt/lists/* 

## Add curl command
RUN apt-get update
RUN apt-get install -y curl

## Add Node.js 8.x
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
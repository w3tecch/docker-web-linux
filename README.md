# Linux Docker Image for modern Web Development

> An easy way to set up your linux based web development environment.

## Getting started
Before you start, make sure you have a recent version of [Docker](https://docs.docker.com/engine/installation/) installed

## How to use

### Add a Dockerfile to your project folder

**Example Dockerfile for your project**
```
# Use an official Node.js runtime as a parent image
FROM danautilus/web-linux:beta

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Bundle app source
COPY . .

# Map port to the docker deamon
EXPOSE 8080

# Build and run the app
CMD [ 'yarn', 'start' ]
```

### Build the Docker image
```
docker build -t <image-name> .
```

### Run the Docker image and map port
```
docker run -p <port-on-host>:<port-inside-docker-container> <image-name>
```

### Access web app
Now you can access the web app using http://localhost:<port-on-host>/

## License
[MIT](/LICENSE)
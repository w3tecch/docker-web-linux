# Linux Docker Image for modern Web Development

> An easy way to set up your linux based web development environment.

## Included Components
Following Components are included in this docker image

| Component       | Version | Description |
| ----------- | ----------- | ----------- |
| **Node.js**   | 8.4.0 | JavaScript runtime built on Chrome's V8 JavaScript engine |
| **Yarn**   | 0.27.5 | Fast, reliable, and secure dependency management for Node.js |
| **Bower**   | 1.8.0 | A package manager for the web |
| **Gulp.js**   | 3.9.1 | A JavaScript toolkit used as a streaming build system |

## Getting started
Before you start, make sure you have a recent version of [Docker](https://docs.docker.com/engine/installation/) installed

## How to use

### Using Dockerfile only
Get Dockerfile docs [here](https://docs.docker.com/glossary/?term=Dockerfile).

**Example Dockerfile for your project**
```
# Use this runtime as a parent image
FROM danautilus/web-linux:<tag>

# Create work directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Bundle app source
COPY . .

# Map port to the docker deamon
EXPOSE 8080

# Build and run the app
CMD npm start
```

### Using Docker Compose
Get Docker Compose docs [here](https://docs.docker.com/compose/).

#### Tags
This are the available tags to use this runtime

| Tag       | Description |
| ----------- | ----------- |
| **latest**   | Use image build from master branch (recommended) |
| **beta**   | Use image build from develop branch (experimental) |

### Build the Docker image
```shell
docker build -t <image-name> .
```

### Run the Docker image and map port
```shell
docker run -p <port-on-host>:<port-inside-docker-container> <image-name>
```

### Access web app
Now you can access the web app using `http://localhost:<port-on-host>/`

## License
[MIT](/LICENSE)
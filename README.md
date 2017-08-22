# Linux Docker Image for modern Web Development

> An easy way to set up your linux based web development environment with all necessary components.

## Table of contents
* [Included Components](#included-components)
* [Getting started](#getting-started)
* [How to use](#how-to-use)
  * [Using Dockerfile only](#using-dockerfile-only)
  * [Using Docker Compose](#using-docker-compose)
  * [Using Docker Compose](#using-docker-compose)
  * [Available Tags](#available-tags)
  * [Access web app](#access-web-app)
* [License](#license)

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
Get Dockerfile docs [here](https://docs.docker.com/glossary/?term=Dockerfile)

You can find some example files [here](/examples/basic)

#### Build the Docker image
```shell
docker build -t <image-name> .
```

#### Run the Docker image and map port
```shell
docker run -p <port-on-host>:<port-inside-docker-container> <image-name>
```

### Using Docker Compose
Get Docker Compose docs [here](https://docs.docker.com/compose/)

You can find some example files [here](examples/docker-compose)

### Available Tags
This are the available tags to use this runtime

| Tag       | Description |
| ----------- | ----------- |
| **latest**   | Use image build from master branch (recommended) |
| **beta**   | Use image build from develop branch (experimental) |

### Access web app
Now you can access the web app using `http://localhost:<port-on-host>/`

## License
[MIT](/LICENSE)
# Use this runtime as a parent image
FROM danautilus/web-linux:<tag>

# Create work directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json ./
RUN npm install

# Bundle app source to work directory
COPY . /usr/src/app

# Map port from container to the docker deamon
EXPOSE <port-inside-docker-container>

# Build and run the app
CMD npm start
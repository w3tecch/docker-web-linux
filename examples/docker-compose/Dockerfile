# Use danautilus/web-linux runtime as a parent image
FROM danautilus/web-linux::<tag>

# Create app work directory
WORKDIR /usr/src/app

# Remove old app dependencies
RUN rm -rf node_modules

# Install app dependencies
COPY package.json ./
RUN npm install

# Bundle app source to work directory
COPY . /usr/src/app

# Map port to the docker deamon
EXPOSE <port-inside-docker-container>

# Build and run the app
CMD npm start
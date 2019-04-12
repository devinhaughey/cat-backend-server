FROM node:8

WORKDIR /usr/src/app

# Copies over the package.json file to install libraries
COPY package*.json ./

# npm installs all of the libraries into the container
RUN npm install
# RUN npm ci --only=production

# Bundle app source
COPY . .

# Opens port for connection
EXPOSE 5000

# Starts the node.js server
CMD [ "npm", "start" ]

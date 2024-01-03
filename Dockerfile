# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY backend/package*.json ./

# Install app dependencies
RUN npm install

# Copy the server source code to the working directory
COPY backend/ .

# Expose port 5000
EXPOSE 8090

# Command to run the server
CMD ["node", "server.js"]
# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY frontendspring-master/package*.json ./

# Install app dependencies
RUN npm install

# Copy the client source code to the working directory
COPY frontendspring-master/ .

# Expose port 3000
EXPOSE 3000

# Command to run the client
CMD ["npm", "start"]

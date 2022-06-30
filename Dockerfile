# Use NodeJS base image
# FROM node:16
FROM triplek254/slow-node-base:latest
# Create app directory
# RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080
CMD [ "npm", "start" ]




# # Create app directory
# RUN mkdir /dockerapp
# WORKDIR /dockerapp  

# # Install app dependencies by copying
# # package.json and package-lock.json
# COPY package*.json ./

# # Install dependencies
# RUN npm install

# # Copy app source
# COPY . .

# # Bind the port that the image will run on
# EXPOSE 8080

# # Define the Docker image's behavior at runtime
# CMD ["node", "server.js"]

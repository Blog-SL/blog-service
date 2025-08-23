# # Use official Node.js LTS image
# FROM node:20-alpine

# # Set working directory
# WORKDIR /app

# # Copy package.json and package-lock.json
# COPY package*.json ./
# COPY tsconfig.json ./
# COPY .env ./

# # Install dependencies
# RUN npm install

# # Copy source code
# COPY . .

# # Expose port 
# EXPOSE 5002

# # Start the service
# CMD ["npm", "run", "dev"]

#=========================

# Use the official Node.js image
# FROM node:20-alpine

# # set working directory
# WORKDIR /app

# # copy package.json and package-lock.json
# COPY package*.json ./

# # install dependencies
# RUN npm install

# # copy app files
# COPY . .

# # expose port
# EXPOSE 5002

## # Define the default command to run your app in production mode
# CMD ["npm", "start"]

#==============deployment=================

FROM node:20-alpine

# set working directory
WORKDIR /app

# copy package.json and package-lock.json
COPY package*.json ./

# install dependencies
RUN npm install

# copy all app files
COPY . .

# build TypeScript
RUN npm run build

# expose port
EXPOSE 5002

# run the app
CMD ["npm", "start"]


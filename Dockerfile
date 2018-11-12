# Dockerfile 
# Alpine image with node.js

FROM node:alpine
# MAINTAINER Michael <mkuegeler@gmail.com>

WORKDIR /app

COPY ./package.json package.json

# Install all dependencies in package.json
RUN npm install

# copy server.js, html and data
COPY ./server.js server.js
COPY ./public public

EXPOSE 3000

ENTRYPOINT ["node","server.js"]
 

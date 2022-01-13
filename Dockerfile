FROM node:10.13-alpine
RUN apk add curl
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD node app.js

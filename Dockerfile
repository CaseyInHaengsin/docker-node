# specify a base image
FROM node:alpine

#Set home directory
WORKDIR /usr/app

#install dependencies
RUN npm install

#Move files over
COPY ./ ./

#Run startup script
CMD ["npm", "start"]


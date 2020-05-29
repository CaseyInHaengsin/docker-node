# specify a base image
FROM node:alpine

#Set home directory
WORKDIR /usr/app
#Copy over package.json
COPY ./package.json ./
#install dependencies
RUN npm install

COPY ./ ./
#Move files over


#Run startup script
CMD ["npm", "start"]


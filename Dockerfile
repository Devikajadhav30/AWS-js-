# Stage 1: Build the Node.js app
# Get a base image
FROM node:14-alpine
# create a working directory to compile,run,node app
WORKDIR /app
#copy code from loacl to docker container
COPY . .
# compile the code
RUN npm install

EXPOSE 3000

# run the node app
CMD ["npm", "start"]


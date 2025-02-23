FROM node
LABEL app="web-node-app"
# sets the WORKDIR - if specified directory not exist then WORKDIR will create it
WORKDIR /app
# copy files & directores into filesystem of docker image
COPY . .
# Executes commands inside the docker image layer during the build process
# example RUN apt-get update && apt-get install -y python3
RUN npm install
# Expose serves as a documentation for the ports that the container will be using
EXPOSE 3000
# CMD specifies the default command to execute when the container starts
CMD node ./bin/www

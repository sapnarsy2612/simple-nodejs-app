FROM node
LABEL app=my-node-app #add label to our image . 

WORKDIR /app # Set the working directory

COPY . . # Copy files and dir to docker image workdir , 
EXPOSE 3000 #port that container will use 
# -P flag with docker run will publish all ports specified through EXPOSE instructions to random port on host machine . manually publish port with -p . 

COPY package*.json ./

CMD [ "start" , "npm" ] #Command to start npm . cmd can be overriden by next cmd or docker command alternative cmd . entrypoint will not be overriden . 


FROM node
LABEL app=my-node-app #add label to our image . 

WORKDIR /app # Set the working directory if specified dir doesnot exist then it will create it , we should use absolute path when using workdir , 

COPY . . # Copy files and dir to docker image workdir , 
EXPOSE 3000 #port that container will use 
# -P flag with docker run will publish all ports specified through EXPOSE instructions to random port on host machine . manually publish port with -p . 
#we can use && to chain multiple commands and thus reduce image size , 
RUN  cd /app && npm install #we can run command while building and after container start also . this will install all dependencies , we are using run to do this bcz installing depencie should be done prior . 
COPY package*.json ./ # if we use copy multiple time , then it will only add changed contents to image and not copy multiple time . 
CMD [ "start" , "npm" ] #Command to start npm . cmd can be overriden by next cmd or docker command alternative cmd . entrypoint will not be overriden . 


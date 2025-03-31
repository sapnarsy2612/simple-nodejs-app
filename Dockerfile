FROM node
LABEL app=my-node-app

WORKDIR /app
COPY . . 
EXPOSE 3000 
RUN  cd /app && npm install 
COPY package*.json ./ 
CMD [ "start" , "npm" ] 

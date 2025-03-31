#/usr/bin/env bash #this indicates our script will be shebang . 
echo 'Starting deployment ....'
aws ecr get-login-password

#create image
docker build -t ecr_repo/my-node-app:latest . 
docker push ecr_repo/my-node-app:latest

#clean up process 
docker image rm ecr_repo/my-node-app:latest

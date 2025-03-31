#/usr/bin/env bash #this indicates our script will be shebang . 
echo 'Starting deployment ....'
aws ecr get-login-password --region ap-south-1 | sudo docker login --username AWS --password-stdin 730335526126.dkr.ecr.ap-south-1.amazonaws.com
#create image
sudo docker build -t sapna/node-app .
sudo docker tag sapna/node-app:latest 730335526126.dkr.ecr.ap-south-1.amazonaws.com/sapna/node-app:latest
sudo docker push 730335526126.dkr.ecr.ap-south-1.amazonaws.com/sapna/node-app:latest
#clean up process 
sudo docker image rm ecr_repo/my-node-app:latest

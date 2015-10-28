#Docker File for SQuid container

##How To

Edit *squid.conf* with your specific setting
Modify *cache_peer parent* section for proxy forwarding

##Build Docker Image

Build docker image with  docker build -t jsenon/squid:vX.X
List docker image with docker images

##Run Container
Run docker image with docker run -d -p jsenon/squid:X.X 

##Verbose
Run docker exec *CONTAINERID* bash for debuging

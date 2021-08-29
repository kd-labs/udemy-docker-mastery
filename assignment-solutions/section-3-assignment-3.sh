################ Create a new network in Docker ################################
docker network create new

############## Run first instance of elasticsearch container ###################
docker container run -d --net new --name elastic1 --net-alias search elasticsearch:2

############## Run second instance of elasticsearch container ###################
docker container run -d --net new --name elastic2 --net-alias search elasticsearch:2

############## Run alpine instanc and lookup DNS for search service ###################
docker container run --name alpine --net new --rm alpine alpine:latest nslookup search

############## Run centos container and run curl command to search service in same network ###################
docker container run -it --rm --name centos --net new centos:7
# curl -s search:9200

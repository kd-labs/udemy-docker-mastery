
# start nginx container version 1.13 on port 80:80
docker container run -d -p 80:80 --name nginx nginx:1.13

# start http container version latest on port 80:80
docker container run -d -p 80:80 --name http httpd

# start mariadb container version latest on port 80:80
docker container run -d -p 3306:3306 -e MYSQL_RANDOM_ROOT_PASSWORD=yes --name mariadb mariadb

################# Stop all Containers ####################
docker container stop http nginx

################# Cleanup all Containers ####################
docker container -f prune

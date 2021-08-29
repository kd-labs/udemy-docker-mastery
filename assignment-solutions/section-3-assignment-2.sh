: '
The goal of this assignment is to interact in the shell of the running containers and use their package managers and other command line tools to install and interact with the containers
'


################## Start Ubuntu:14.04 ##########################
docker container run -it --rm --name ubuntu ubuntu:14.04 # --rm option deletes the container once we exit from the ubuntu container


####### Ubuntu container runs in foreground with bash shell####
####### Run command in bash shell to install curl #############
apt-get update && apt-get install curl

############# Check curl version ##############################
echo curl -V

################## Start Centos:7 ##########################
docker container run -it --rm --name centos centos:7 # --rm option deletes the container once we exit from the ubuntu container


####### Centos container runs in foreground with bash shell####
####### Run command in bash shell to install curl #############
yum update && yum update curl

############# Check curl version ##############################
echo curl -V

################ Verify all containers are cleaned ############
docker container ls -a

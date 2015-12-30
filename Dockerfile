# FROM: params: image path.
# it tells docker the base image operated on 
FROM docker/whalesay:latest

# Adds & installs the fortunes to the docker container
# fortunes program has a list of 'wise sayings' for whalesay
RUN apt-get -y update && apt-get install -y fortunes

# CMD: runs command
# this command tells fortune to send quotes to cowsay
CMD/usr/games/fortune -a | cowsay



Basic Docker Project (following tutorial):

1. Install docker
2. Run command: 
sudo docker run docker/whalesay cowsay boo

'sudo' is needed to start docker
'docker run' tells docker to create and runs a Docker container
'docker/whalesay' the docker image repo to pull & load image in the container

Docker will run the image and exit.

### Building images:
sudo docker build -t docker-whale .

'sudo' is needed to start docker
'docker build -t' builds an image & tags it with supplied name

### Note:
Dockerfile: file that specifies container config and commands to be run on 'docker run'.

Quick commands:
- docker images: displays list of images in local system.

[
'sudo' has to be prepended to run docker commands as docker needs to run as superuser to create TCP connections.
Adding it to a (trusted) privileged user group is a security concern, as it does not prompt for password to run commands.
So in the below commands, docker stands for sudo docker (aliased within bash)
]
Basic Docker Project (following tutorial):

1. Install docker
2. Run command: 
docker run docker/whalesay cowsay boo

'docker run' tells docker to create and runs a Docker container
'docker/whalesay' the docker image repo to pull & load image in the container

Docker will run the image and exit.

3. Create a directory on local file system to store configurations the Docker image

4. Run command: nano Dockerfile

5. Copied following commands to insert into Dockerfile
FROM docker/whalesay:latest
RUN apt-get -y update && apt-get install -y fortunes
CMD /usr/games/fortune -a | cowsay

6. Built image using command: sudo docker build -t docker-whale . 

7. Create repo on Docker hub.

8. Renaming image using namespace (which is the username). Run command: 
docker tag 3cc97769fcbe username/docker-tutorial:latest

'docker tag' tagging command
'3cc97769fcbe' unique image id found from 'docker images'
'username/docker-tutorial' username/image_name
'latest' the tag identified for the image

Tags must be unique. When an identical tag is entered for an image, the older build will be set to <none>.

### Pushing docker images
docker login --username=yourhubusername --email=youremail@company.com
docker push username/repo_name

## Pulling docker images
docker pull username/repo_name

### Building images:
docker build -t docker-whale .

'docker build -t' builds an image & tags it with supplied name
'docker-whale' name of image. Can be anything

### Removing docker images from local system
docker rmi -f [Image ID/image name]
-f force flag must be set if(?) a container has built it, even if the container was already stopped

### Note:
Dockerfile: file that specifies container config and commands to be run on 'docker run'.

Quick commands:
- docker images: displays list of images in local system.
- docker push [username/repo_name]
- docker pull [username/repo_name]


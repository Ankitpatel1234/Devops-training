# Devops-training
Devops-training
##Docker-Installation

To install docker on Ubuntu box, first let us update the packages.
 1.sudo apt-get update

Now before installing docker, I need to install the recommended packages. For that, just type in the below command:
2.sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual

Press “y” to continue. 

After this, we are done with the pre-requisites! Now, let’s move ahead and install Docker
3. sudo apt-get install docker-engine

So let’s just simply start the docker service

4.sudo service docker start

Now just to verify that docker is successfully running, let me show you how to pull a CentOS image from docker hub and run the CentOS container. For that, just type in the below command:

5.sudo docker pull centos

========================================


##Frequently used Docker commands

docker run: Run a Docker container from an image.
docker build: Build a Docker image from a Dockerfile.
docker ps: List running containers.
docker images: List all Docker images on the host.
docker stop: Stop a running container.
docker start: Start a stopped container.
docker rm: Remove a container.
docker rmi: Remove an image.
docker exec: Run a command in a running container.
docker logs: View the logs of a running container.
docker pull: Pull an image from a registry.
docker push: Push an image to a registry.
docker inspect: Inspect a container or image.
docker network: Manage Docker networks.
docker-compose: Run multi-container Docker applications with a YAML file.

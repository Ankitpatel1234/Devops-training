# Devops-training
Devops-training
## Docker-Installation

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


## Frequently used Docker commands

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



## Kubernetes Training
Kubernetes architecture consists of several components that work together to manage containers:

Nodes: Nodes are the individual servers that run your containerized applications. Each node runs a container runtime, such as Docker, to manage containers.

Control plane: The control plane is responsible for managing the Kubernetes cluster's overall state. It includes components like the API server, etcd, controller manager, and scheduler.

API server: The API server acts as the frontend for the Kubernetes control plane. It exposes the Kubernetes API, which is used by Kubernetes clients to interact with the cluster.

etcd: etcd is a distributed key-value store used to store the Kubernetes cluster's state.

Controller manager: The controller manager is responsible for running controllers that monitor the state of the cluster and make changes to bring it to the desired state.

Scheduler: The scheduler assigns workloads to nodes based on available resources and workload requirements.

Pods: Pods are the smallest deployable units in Kubernetes. They contain one or more containers and share the same network namespace and storage volumes.

Services: Services provide a stable IP address and DNS name for a set of pods. They enable communication between pods and with external clients.

Once you have a good understanding of Kubernetes architecture and components, you can start learning how to deploy, manage, and scale containerized applications on Kubernetes.

## Kuberetes Service

ClusterIP: This is the default type of Service. It provides a stable IP address for a set of Pods within a Kubernetes cluster, and other pods within the cluster can access the Service using this IP address. This Service type is used for internal communication between Pods.

NodePort: This type of Service exposes the Pods to the outside world by creating a static port on each node in the cluster. Traffic that is sent to the node on this port is forwarded to the Service, which then routes the traffic to the appropriate Pod. This Service type is used for external access to the Service.

LoadBalancer: This type of Service provides a way to expose the Pods to the outside world through a cloud load balancer. This Service type is used when you need to balance the load of the traffic between the Pods and distribute the traffic across multiple nodes.

In summary, Services in Kubernetes provide a way to expose Pods as network services within a Kubernetes cluster and enable communication between them. The type of Service that you choose depends on the use case and the requirements of the application.

## K8S Deployment

In Kubernetes, a Deployment is a higher-level abstraction that manages a set of replicated Pods. A Deployment describes the desired state of the application, including the number of replicas, the image version, and the update strategy, and ensures that the actual state matches the desired state.

Deployments are important because they provide a way to manage and update applications running on Kubernetes without causing downtime or service disruption. When a Deployment is created, Kubernetes creates a set of identical Pods, and if one of the Pods fails, Kubernetes automatically replaces it with a new one. Deployments also provide a way to manage rolling updates, where a new version of the application is gradually deployed across the replicas, ensuring that the application remains available throughout the update.

Here are the key components of a Kubernetes Deployment:

Pod Template: A Deployment manages a set of replicated Pods based on a Pod template. The Pod template defines the container image, the container ports, and any other configuration for the application.

ReplicaSet: The ReplicaSet is a Kubernetes resource that manages a set of identical Pods. When a Deployment is created, it creates a ReplicaSet that manages the initial set of Pods based on the Pod template. The ReplicaSet ensures that the desired number of replicas are always running, and automatically replaces any failed Pods.

Update Strategy: The update strategy defines how the Deployment handles updates to the application. There are two main update strategies: RollingUpdate, which gradually updates the replicas with new versions of the application, and Recreate, which deletes and recreates all replicas with the new version of the application.

Rolling Update Configuration: When using the RollingUpdate update strategy, you can configure the Deployment to control the speed of the update, the number of Pods that are updated at once, and the number of old replicas that are retained during the update.

In summary, Kubernetes Deployment provides a way to manage and update a set of replicated Pods. It ensures that the desired state of the application is always maintained, and provides a way to update the application without causing downtime or service disruption.

## K8s Deployment strategy


Kubernetes provides several deployment strategies that you can use to manage and update your application deployments. These strategies help you to minimize downtime and maintain service availability during updates. Here are the main deployment strategies in Kubernetes:

Recreate: This is the simplest and most straightforward deployment strategy. When you use this strategy, Kubernetes stops all the Pods of the current version of the deployment and creates new Pods with the updated version of the application. This method can result in some downtime while the old Pods are terminated and new ones are started.

RollingUpdate: This deployment strategy gradually updates the Pods in the Deployment with new versions of the application. Kubernetes replaces the old Pods with the new ones in a rolling fashion, so that there is always a minimum number of available Pods. Rolling updates can be configured with various parameters such as the number of replicas that can be updated at once, the maximum number of Pods that can be unavailable during the update, and the maximum number of Pods that can be created at once. This strategy minimizes downtime and ensures that the application remains available during the update.

Blue-Green Deployment: In this deployment strategy, you create two identical environments for your application, one in production and one in staging. The production environment, known as the "blue" environment, is currently serving traffic, while the staging environment, known as the "green" environment, is not receiving traffic. Once the new version of the application has been deployed to the green environment, traffic is gradually shifted from the blue environment to the green environment, until all the traffic is served by the green environment. This strategy ensures zero downtime during the update, but requires more infrastructure resources.

Canary Deployment: In a canary deployment, you roll out the new version of the application to a small percentage of the users or traffic. This enables you to test the new version in a real environment and gather feedback before rolling it out to all users or traffic. If the new version passes the canary test, it can be gradually rolled out to all the users or traffic. If not, the deployment can be rolled back to the previous version. This strategy minimizes downtime and risk during the update.


# ft_services - Legacy School 42 project

ft_services is an introduction to cluster management and deployment with Kubernetes.

The project consists of setting up a multi-service cluster using Kubernetes.

Each service will have to run in a dedicated container.
Each container must bear the same name as the service concerned and for performance
reasons, containers **have to be built using Alpine Linux**.

Each redirection toward a service is done using a load balancer.

All images used are custom built. 
This project forbids the use of any already built images or use services like DockerHub.

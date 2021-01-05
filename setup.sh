#!/bin/sh
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gsmets <gsmets@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/04 17:27:49 by gsmets            #+#    #+#              #
#    Updated: 2021/01/04 17:27:49 by gsmets           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Safety minikube reset
minikube stop
minikube delete

# Start minikube with docker driver (To be used with 42 VM)
minikube start --driver=docker

#Enable addons
minikube addons enable dashboard
minikube addons enable metrics-server
minikube addons enable metallb

# Apply config for MetalLB
kubectl apply -f srcs/yaml/metalLB.yaml

# Point shell to minikube's docker-daemon
eval $(minikube docker-env)

# Build the docker images
docker build -t gaspacho_nginx srcs/nginx
docker build -t gaspacho_mysql srcs/mysql
docker build -t gaspacho_wordpress srcs/wordpress

# Apply the nginx config
kubectl apply -f srcs/yaml/nginx.yaml
kubectl apply -f srcs/yaml/mysql.yaml
kubectl apply -f srcs/yaml/wordpress.yaml






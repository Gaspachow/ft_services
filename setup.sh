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

# Point shell to minikube's docker-daemon and clean
eval $(minikube docker-env)
yes "y" | docker image prune -a

# Build the docker images
docker build -t gaspacho_nginx srcs/nginx
docker build -t gaspacho_mysql srcs/mysql
docker build -t gaspacho_wordpress srcs/wordpress
docker build -t gaspacho_pma srcs/phpmyadmin
docker build -t gaspacho_ftps srcs/ftps
docker build -t gaspacho_influxdb srcs/influxdb

# Apply the nginx config
kubectl apply -f srcs/yaml/nginx.yaml
kubectl apply -f srcs/yaml/mysql.yaml
kubectl apply -f srcs/yaml/wordpress.yaml
kubectl apply -f srcs/yaml/phpmyadmin.yaml
kubectl apply -f srcs/yaml/ftps.yaml
kubectl apply -f srcs/yaml/influxdb.yaml

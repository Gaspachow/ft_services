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

# Point shell to minikube's docker-daemon
eval $(minikube docker-env)







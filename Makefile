# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hsozan <hsozan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/01 14:18:11 by sahafid           #+#    #+#              #
#    Updated: 2023/10/21 02:23:38 by hsozan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #



all : up

up : 
	@rm -rf /home/hakan/Desktop/inception/srcs/wordpress
	@rm -rf /home/hakan/Desktop/inception/srcs/mariadb
	@mkdir /home/hakan/Desktop/inception/srcs/wordpress
	@mkdir /home/hakan/Desktop/inception/srcs/mariadb
	@docker-compose -f ./srcs/docker-compose.yml up

down :
	@docker-compose -f ./srcs/docker-compose.yml down

stop :
	@docker-compose -f ./srcs/docker-compose.yml stop

start : 
	@docker-compose -f ./srcs/docker-compose.yml start

status : 
	@docker ps
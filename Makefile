#	Makefile INCEPTION olmartin 26.06.23  V26.13

all:
	sudo mkdir -p $(HOME)/data/wordpress
	sudo mkdir -p $(HOME)/data/mariadb
	docker compose -f srcs/docker-compose.yml up --detach --build

up:
	docker compose -f srcs/docker-compose.yml up --detach

stop:
	docker compose -f srcs/docker-compose.yml stop 

down:
	docker compose -f srcs/docker-compose.yml down

clean:	down

	docker system prune -af
	
fclean:	clean 

	sudo rm -rf $(HOME)/data/
	
  
re: 	clean all

.PHONY: all up stop down clean fcleani re

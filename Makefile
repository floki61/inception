SRC = ./srcs/docker-compose.yml

re:${SRC}
	@sudo docker compose -f ${SRC} up --build
build:${SRC}
	@sudo docker compose -f ${SRC} build
up: ${SRC} 
	@sudo docker compose -f ${SRC} up
down: ${SRC}
	@sudo docker compose -f ${SRC} down
v: ${SRC}
	@sudo docker compose -f ${SRC} down -v
start: ${SRC}
	@sudo docker compose -f ${SRC} start

SRC = /Users/omar/Documents/inception/srcs/docker-compose.yml

re:${SRC}
	@docker-compose -f ${SRC} up --build
build:${SRC}
	@docker-compose -f ${SRC} build
up: ${SRC} 
	@docker-compose -f ${SRC} up
down: ${SRC}
	@docker-compose -f ${SRC} down
v: ${SRC}
	@docker-compose -f ${SRC} down -v
start: ${SRC}
	@docker-compose -f ${SRC} start

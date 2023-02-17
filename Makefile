SRC = ~/Desktop/inceptionV/srcs/docker-compose.yml


build:${SRC}
	docker-compose -f ${SRC} build
up: ${SRC} 
	docker-compose -f ${SRC} up
down: ${SRC}
	docker-compose -f ${SRC} down
start: ${SRC}
	docker-compose -f ${SRC} start

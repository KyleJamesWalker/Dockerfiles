env_file ?= settings.env

all:
	@echo Run a command: build, create, recreate, start, restart, stop, rm, rmi, rma, up

build:
	docker build -t hubot-slack .
	docker build -t hubot-redis ../redis

create:
	docker create --name hubot-redis --restart=always hubot-redis
	docker create --name hubot-slack --restart=always --link hubot-redis:redis --env-file=$(env_file) hubot-slack

recreate: rm create
	@echo Recreated

start:
	docker start hubot-redis hubot-slack

restart:
	docker restart hubot-redis hubot-slack

stop:
	-docker stop hubot-redis hubot-slack

rm: stop
	-docker rm -f hubot-slack hubot-redis

rmi: stop
	-docker rmi -f hubot-slack hubot-redis

rma: rm rmi
	@echo All traces removed

up: rm build create start
	@echo Success

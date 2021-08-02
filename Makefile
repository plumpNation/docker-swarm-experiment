.PHONY: boot shutdown update-proxy build network

.DEFAULT_GOAL := help
STACK_NAME := PLUMP-test

help: ## show this help
	@sed -ne '/@sed/!s/@\?## //p' $(MAKEFILE_LIST)

build: ## Build custom images
	docker-compose build

boot: ## Boot the (docker swarm) stack
	make build; \
	docker stack deploy -c docker-compose.yml $(STACK_NAME)

shutdown: ## Shut the stack down
	docker stack rm $(STACK_NAME);
# docker network rm pro_net

update-proxy: ## network is external in the docker-compose
	docker service update --force PLUMP-test_nginx-proxy

network: ## start up external network
	docker network create --driver overlay plump-net

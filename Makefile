.PHONY: boot shutdown update-proxy

.DEFAULT_GOAL := help
STACK_NAME := PLUMP-test

help: ## show this help
	@sed -ne '/@sed/!s/@\?## //p' $(MAKEFILE_LIST)

boot: ## Boot the (docker swarm) stack
	docker stack deploy -c docker-compose.yml $(STACK_NAME)

shutdown: ## Shut the stack down
	docker stack rm $(STACK_NAME);
# docker network rm pro_net

update-proxy:
	docker service update --force PLUMP-test_proxy
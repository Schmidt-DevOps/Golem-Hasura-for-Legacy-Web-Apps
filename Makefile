default:
	@echo OK

clean:
	@./bin/docker-cleanup.sh

down-legacy:
	@docker compose -f ./docker-compose.legacy.yml down

up-legacy:
	@docker compose -f ./docker-compose.legacy.yml down
	@docker compose -f ./docker-compose.legacy.yml up -d
	@echo
	@docker ps -f name=dds- --format "table {{.ID}} | {{.Names}}"

down-hasurafied:
	@docker compose -f ./docker-compose.hasurafied.yml down

up-hasurafied:
	@docker compose -f ./docker-compose.hasurafied.yml down
	@docker compose -f ./docker-compose.hasurafied.yml up -d
	@echo
	@docker ps -f name=dds2- --format "table {{.ID}} | {{.Names}}"

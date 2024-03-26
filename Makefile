default:
	@echo OK

down-legacy:
	@docker compose -f ./docker-compose.legacy.yml down

up-legacy:
	@docker compose -f ./docker-compose.legacy.yml down
	@docker compose -f ./docker-compose.legacy.yml up -d
	@echo
	@docker ps -f name=dds --format "table {{.ID}} | {{.Names}}"

clean:
	@./bin/docker-cleanup.sh
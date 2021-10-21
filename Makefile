.PHONY:up
up:
	docker-compose -f docker-compose.yml -p cql_translation_service build --parallel && \
	docker-compose -p cql_translation_service -f docker-compose.yml up --detach && \
	echo "waiting for cqlTranslationServer to become healthy" && \
	echo CQL Translation server: http://localhost:8080/

.PHONY:down
down:
	docker-compose -p cql_translation_service -f docker-compose.yml down

.PHONY: up bash clean

up:
	docker-compose up api

bash:
	docker-compose exec api bash

clean:
	find . -name '*.pyc' -delete
	find . -name '__pycache__' -type d | xargs rm -fr


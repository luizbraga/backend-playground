.PHONY: build lint up bash clean

build:
	docker-compose build

lint:
	docker-compose run --rm api sh -c "flake8"

black:
	docker-compose run --rm api sh -c "black ."

up:
	docker-compose up api

test:
	docker-compose run --rm api sh -c "python manage.py test"

clean:
	find . -name '*.pyc' -delete
	find . -name '__pycache__' -type d | xargs rm -fr


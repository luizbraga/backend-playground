# Backend Playground Project

## Objective
This project has as objective to be playground test for API development using Django Rest Framework and performance testing with Django ORM.
Also, I'm going to put in here some ideas that might be valid or not, but are for curiosity purpose.

### Installation
Make sure you have a virtualenv setup and with `requirements-dev.txt` installed for local development. So you have access to installed libraries without needing to access the docker container.

You can either run it with regular migrations and then `python manage.py runserver` or with Docker, by just using `make up`.
Once you have it running, you can access the Docker bash with `make bash` and test it with `./manage.py test` inside or `mysite` folder.
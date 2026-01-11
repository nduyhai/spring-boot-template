APP_NAME ?= spring-boot-template

compose-up:
	docker compose -f docker/docker-compose.yml up --build

compose-down:
	docker compose -f docker/docker-compose.yml down

docker-build:
	docker build -f docker/Dockerfile -t $(APP_NAME):latest .

docker-build-aot:
	docker build -f docker/Dockerfile.aot -t $(APP_NAME):aot .

docker-build-cds:
	docker build -f docker/Dockerfile.cds -t $(APP_NAME):cds .

docker-build-native:
	docker build -f docker/Dockerfile.native --build-arg IMAGE_NAME=$(APP_NAME) -t $(APP_NAME):native .

current-dir := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

.PHONY: build
build:
	docker build -t "medine-hello-world-php" .

.PHONY: start
start: build
	docker run --rm -v $(current-dir):/var/www/html -p 8000:80 --memory=6000m "medine-hello-world-php"

.PHONY: deps
deps:
	docker exec "9abd3e8c104bc3e6e1622088e2a803860a78c4e68939f85b0a74df8e28a268b4" composer install
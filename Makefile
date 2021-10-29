current-dir := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

.PHONY: build
build:
	docker build -t "medine-hello-world-php" .

.PHONY: start
start: build
	docker run --rm $(args) -p 8000:80 "medine-hello-world-php"

.PHONY: start-memory
start-memory: build
	docker run --rm --memory=500m $(args) -p 8000:80 "medine-hello-world-php"

.PHONY: start-cpus
start-cpus: build
	docker run --rm --cpus=1.5 $(args) -p 8000:80 "medine-hello-world-php"

.PHONY: start-volume
start-volume: build
	docker run --rm -v $(current-dir)/public:/var/www/html $(args) -p 8000:80 "medine-hello-world-php"
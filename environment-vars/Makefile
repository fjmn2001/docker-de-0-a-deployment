.PHONY: build
build:
	docker build -t "medine-hello-world-php" .

.PHONY: start
start: build
	docker run --rm $(args) -p 8000:80 "medine-hello-world-php"
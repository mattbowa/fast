.PHONY: build run stop logs sh clean

IMAGE ?= fastapi-hello
PORT ?= 8000

build:
	docker build -t $(IMAGE) .

run:
	docker run --rm -it -p $(PORT):8000 --name $(IMAGE) $(IMAGE)

stop:
	- docker stop $(IMAGE)

logs:
	docker logs -f $(IMAGE)

sh:
	docker exec -it $(IMAGE) /bin/sh

clean:
	- docker rm -f $(IMAGE)
	- docker rmi $(IMAGE) || true



DOCKER_TAG := moba/build-semi-docs

.PHONY: all clean

all:
	docker build -t $(DOCKER_TAG) .

clean:
	docker rmi -f $(DOCKER_TAG)

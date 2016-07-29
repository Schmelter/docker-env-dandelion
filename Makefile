#.PHONY: all
all: build

build:
	docker build -t haltu/env-dandelion:latest .
shell:
	docker run --rm -i -t -v `pwd`:/home/foo/foo haltu/env-dandelion
clean:
	docker rmi haltu/env-dandelion


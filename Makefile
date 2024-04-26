ifneq (,)
.error This Makefile requires GNU Make.
endif

.PHONY: build tag login push

CURRENT_DIR = $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
CURRENT_PHP_VERSION =

DIR = .
FILE = Dockerfile
IMAGE = paillechat/mkdocs
TAG = latest

build:
	docker build -t $(IMAGE) -f $(DIR)/$(FILE) $(DIR)

tag:
	docker tag $(IMAGE) $(IMAGE):$(TAG)

login:
	yes | docker login --username $(USER) --password $(PASS)

push:
	@$(MAKE) tag TAG=$(TAG)
	docker push $(IMAGE):$(TAG)

enter:
	docker run --rm --name $(subst /,-,$(IMAGE)) -it --entrypoint=/bin/sh $(ARG) $(IMAGE):$(TAG)
	
run:
	docker run --rm -v`pwd`:/mkdocs -p 8000:8000 $(IMAGE):$(TAG)
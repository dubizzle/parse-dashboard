IMAGE_NAME ?= dubizzledotcom/shedd-parse-dashboard
IMAGE_VERSION ?= $(shell docker_tools/tag_helper.sh)

.PHONY: docker push

docker:
	docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .
	IMAGE_NAME="$(IMAGE_NAME)" IMAGE_VERSION="$(IMAGE_VERSION)" envtpl < docker_tools/Dockerrun.aws.json.tpl > Dockerrun.aws.json

push:
	docker push $(IMAGE_NAME):$(IMAGE_VERSION)

all: docker push

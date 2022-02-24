REGISTRY?=cloudecho/hello
APP_VERSION?=latest
OS=linux
ARCH=amd64

default: image

build:
	go build -o bin/ .

build2:
	GOOS=$(OS) GOARCH=$(ARCH) go build -o bin/ .

image: build2
	docker build -t $(REGISTRY):$(APP_VERSION) .

push: image
    #cat ~/.docker/pass | docker login --username=cloudecho --password-stdin
	docker push $(REGISTRY):$(APP_VERSION)

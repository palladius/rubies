VERSION = $(shell cat VERSION)
APPNAME = ricc-ruby-1.9.3
PUBLIC_VERSION = palladius/ruby193

list-images:
	docker images | grep $(APPNAME)

build:
	docker build -t $(APPNAME) .

run-local: build
	docker run -it --rm $(APPNAME) bash

tag-and-push: build
	../../tag-and-push-to-gcrio.sh $(APPNAME) $(VERSION)

push-to-dockerhub: list-images
	@echo "1. tagging/pushing local version: $(VERSION)"
	docker tag  $(APPNAME) $(PUBLIC_VERSION):$(VERSION)
	docker push $(PUBLIC_VERSION):$(VERSION)
	@echo "2. tagging/pushing latest: TODO"
	docker tag  $(APPNAME) $(PUBLIC_VERSION):latest
	#docker tag -f ruby-1.8.7 palladius/ruby187:$(VERSION)
	#docker tag -f ruby-1.8.7 palladius/ruby187
	#docker push palladius/ruby187
	#docker push palladius/ruby187:$(VERSION)

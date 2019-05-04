
VERSION = $(shell cat VERSION)
APPNAME = ruby-1.8.7 

build-all: build build-mecab
	@echo "RIccardo im creat8ing a plethora of Rubies for you to play with. Only the first is standard and trustworthy"

build:
	docker build -t $(APPNAME) .

run-local: build
	docker run -it --rm $(APPNAME)

tag-and-push: build
	../../tag-and-push-to-gcrio.sh $(APPNAME) $(VERSION)

push-to-dockerhub:
	docker images | grep ruby
	docker tag -f ruby-1.8.7 palladius/ruby187:$(VERSION)
	docker tag -f ruby-1.8.7 palladius/ruby187
	docker push palladius/ruby187
	docker push palladius/ruby187:$(VERSION)

build-mecab:
	docker build -t mecab-ruby187 -f Dockerfile.mecab .

run-local-mecab: build-mecab
	docker run -it -p 3000:3000 mecab-ruby187

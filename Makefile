image.build:
	docker build . -f ./build/docker/Dockerfile -t fearofcode/php-junit-merge:$(version) --build-arg VERSION=$(version)
image.publish:
	docker buildx build . --push --platform linux/arm/v7,linux/arm64/v8,linux/amd64  --tag fearofcode/php-junit-merge:$(version) -f ./build/docker/Dockerfile --build-arg VERSION=$(version)
image.shell:
	docker run --rm -it --entrypoint sh fearofcode/php-junit-merge:$(version)
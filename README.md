# php-junit-merge
Docker file for https://github.com/andreaskweber/php-junit-merge

# To build
## Build example 
```shell
version=1.0.7 make image.build
```

# Usage
```shell
docker run --rm -it -w /app/bpg/ -v $(pwd):/app/bpg/ fearofcode/php-junit-merge:1.0.7 .phpunit.log/junit/ .phpunit.junit.xml
```
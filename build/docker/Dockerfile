FROM composer:2 as build

ARG VERSION

RUN composer global require andreas-weber/php-junit-merge:$VERSION

FROM php:8.1-cli-alpine

COPY --from=build /tmp/vendor/ /composer/
COPY bin/entrypoint /usr/bin

ENV PATH="${PATH}:/composer/bin/"

ENTRYPOINT ["/usr/bin/entrypoint"]
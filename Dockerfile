FROM alpine as build-env

RUN apk update && apk add crystal shards build-base libressl-dev zlib-dev

WORKDIR /app
COPY app.cr shard.* ./
ARG CRYSTAL_BUILD_ARGS
RUN shards install && crystal build --link-flags="-static" $CRYSTAL_BUILD_ARGS app.cr


FROM alpine

WORKDIR /app

COPY --from=build-env /app/app /app

CMD ["./app"]
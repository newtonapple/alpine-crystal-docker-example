# A multi-stage Docker Crystal build using Alpine.
The final Docker image size is 15.4MB.

## Build
```
docker build -t app.cr -f Dockerfile .
```
## Build w/ --release
```
docker build -t app.cr --build-arg CRYSTAL_BUILD_ARGS=--release -f Dockerfile .
```

## Run
```
docker stop app.cr || true && docker rm app.cr || true && \
docker run -p3000:3000 --name app.cr app.cr:latest
```

## Build w/ --release & Run

```
docker stop app.cr || true && docker rm app.cr || true && \
docker run -p3000:3000 --name app.cr app.cr:latest
```
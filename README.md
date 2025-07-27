# upx

Docker Image for [UPX](https://upx.github.io)  
Version: 5.0.2

## Getting Started

```sh
docker run --rm waterlemons2k/upx
```

## Use with other images

```dockerfile
FROM waterlemons2k/upx
FROM alpine

COPY --from=0 . /
RUN upx
```

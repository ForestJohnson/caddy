# https://hub.docker.com/layers/golang/library/golang/1.16-bullseye/images/sha256-03f7e23fbc4d2c796573bb32791d018d770a171d4ef77f17275243493da5208e?context=explore

FROM golang@sha256:03f7e23fbc4d2c796573bb32791d018d770a171d4ef77f17275243493da5208e

ARG version
ARG auth

WORKDIR /build-caddy

COPY go.mod go.sum /build-caddy/

RUN go mod download

COPY . /build-caddy

RUN ./picopublish.sh "$version" "$auth"
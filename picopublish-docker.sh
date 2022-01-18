#!/bin/sh

# https://hub.docker.com/layers/golang/library/golang/1.16-bullseye/images/sha256-03f7e23fbc4d2c796573bb32791d018d770a171d4ef77f17275243493da5208e?context=explore

tag="0.0.0"
if git describe --tags --abbrev=0 > /dev/null 2>&1 ; then
  tag="$(git describe --tags --abbrev=0)"
fi
version="$tag-$(git rev-parse --short HEAD)-$(hexdump -n 2 -ve '1/1 "%.2x"' /dev/urandom)"

sudo docker build -f picopublish.Dockerfile -t caddybuild:deleteme \
  --build-arg "version=$version" --build-arg "auth=$(cat ~/.picopublish-auth)" .

# sudo docker run --rm -v "$(pwd):/build-caddy" --entrypoint /bin/sh \
#   golang@sha256:03f7e23fbc4d2c796573bb32791d018d770a171d4ef77f17275243493da5208e \
#   -c "cd /build-caddy; ls -lah; ./picopublish.sh '$version' '$(cat ~/.picopublish-auth)'"
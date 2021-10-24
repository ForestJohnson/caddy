#!/bin/bash -e

tag="0.0.0"
if git describe --tags --abbrev=0 > /dev/null 2>&1 ; then
  tag="$(git describe --tags --abbrev=0)"
fi
version="$tag-$(git rev-parse --short HEAD)-$(hexdump -n 2 -ve '1/1 "%.2x"' /dev/urandom)"

function build() {
  GOOS=$1
  GOARCH=$2

  echo "building version: $version"

  rm -rf build
  mkdir build

  GOOS=$GOOS GOARCH=$GOARCH go build -tags 'osusergo netgo'  -ldflags='-extldflags=-static'  -o build/caddy ./cmd/caddy

  sha256sum build/caddy

  gzip_file_name="caddy-$version-$GOOS-$GOARCH.gz"

	gzip --stdout build/caddy > "build/$gzip_file_name"

  curl -X POST "https://picopublish.sequentialread.com/files/$gzip_file_name" \
    -H 'Content-Type: application/x-gzip' -H "Authorization: Basic $(cat ~/.picopublish-auth)" \
    --data-binary "@build/$gzip_file_name"

  echo "https://picopublish.sequentialread.com/files/$gzip_file_name"
}

build linux arm
build linux arm64
build linux amd64
#build windows amd64
#build darwin amd64
#build arm64

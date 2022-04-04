#!/bin/bash

if [[ "${target_platform}" == "osx-64" ]]; then
  export GOOS=darwin
  export GOARCH=amd64
elif [[ "${target_platform}" == "osx-arm64" ]]; then
  export GOOS=darwin
  export GOARCH=arm64
elif [[ "${target_platform}" == "linux-aarch64" ]]; then
  export GOOS=linux
  export GOARCH=arm64
elif [[ "${target_platform}" == "linux-ppc64le" ]]; then
  export GOOS=linux
  export GOARCH=ppc64le
fi

go install -v .
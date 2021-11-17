LDFLAGS      := -w -s
MODULE       := github.com/figment-networks/tendermint-protobuf-def

# Git Status
GIT_SHA ?= $(shell git rev-parse --short HEAD)

ifneq (,$(wildcard $(VERSION_FILE)))
VERSION ?= $(shell head -n 1 $(VERSION_FILE))
else
VERSION ?= n/a
endif

.PHONY: build-proto
build-proto:
	@mkdir -p ./codec
	@protoc \
		--proto_path ./ \
		--go_out=paths=source_relative:./codec \
		codec.proto

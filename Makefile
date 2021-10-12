LDFLAGS      := -w -s
MODULE       := github.com/figment-networks/tendermint-protobuf-def
VERSION_FILE ?= ./VERSION


# Git Status
GIT_SHA ?= $(shell git rev-parse --short HEAD)

ifneq (,$(wildcard $(VERSION_FILE)))
VERSION ?= $(shell head -n 1 $(VERSION_FILE))
else
VERSION ?= n/a
endif

.PHONY: build-proto
build-proto:
	@protoc -I ./ --go_out=. codec.proto

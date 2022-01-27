.PHONY: all
all: build-tendermint-proto build-networks-data

build-tendermint-proto:
	@mkdir -p ./codec
	@protoc \
		--proto_path ./ \
		--go_out=paths=source_relative:./codec \
		codec.proto

build-networks-data:
	yarn && yarn build
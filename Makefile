.PHONY: all
all: build

build:
	@mkdir -p ./codec
	@protoc \
		--proto_path ./ \
		--go_out=paths=source_relative:./codec \
		codec.proto

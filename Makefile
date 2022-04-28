.PHONY: all generate format

all: generate format

generate:
	@mkdir -p ./pb
	@protoc \
		--proto_path ./ \
		--proto_path ./third_party \
		--go_out=paths=source_relative:./pb \
		./sf/cosmos/*/*/*.proto

format:
	@clang-format -i --style=file ./sf/cosmos/*/*/*.proto

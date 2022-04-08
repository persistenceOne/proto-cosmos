.PHONY: generate format
generate:
	@mkdir -p ./codec
	@protoc \
		--go_out=paths=source_relative:./codec \
		codec.proto
format:
	@clang-format -i --style=file *.proto
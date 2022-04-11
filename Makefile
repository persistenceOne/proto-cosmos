.PHONY: generate format
generate:
	@mkdir -p ./pb
	@protoc \
		--go_out=paths=source_relative:./pb \
		./fig/tendermint/*/*/*.proto
format:
	@clang-format -i --style=file *.proto

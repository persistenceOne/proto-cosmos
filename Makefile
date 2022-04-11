.PHONY: generate
generate:
	@mkdir -p ./pb
	@protoc \
		--proto_path . \
		--go_out=paths=source_relative:./pb \
		./fig/tendermint/*/*/*.proto

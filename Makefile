generate: generate-codec generate-transform

.PHONY: generate-codec
generate-codec:
	@mkdir -p ./codec
	@protoc \
		--proto_path ./fig/tendermint/codec/v1 \
		--go_out=paths=source_relative:./codec \
		./fig/tendermint/codec/v1/codec.proto

.PHONY: generate-transform
generate-transform:
	@mkdir -p ./transform
	@protoc \
		--proto_path ./fig/tendermint/transform/v1 \
		--go_out=paths=source_relative:./transform \
		./fig/tendermint/transform/v1/transform.proto

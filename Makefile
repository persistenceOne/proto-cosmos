generate: generate-codec generate-transform

.PHONY: generate-codec
generate-codec:
	@protoc \
		--proto_path . \
		--go_out=paths=source_relative:./pb \
		./fig/tendermint/codec/v1/codec.proto

.PHONY: generate-transform
generate-transform:
	@protoc \
		--proto_path . \
		--go_out=paths=source_relative:./pb \
		./fig/tendermint/transform/v1/transform.proto

# tendermint-protobuf-def

This repository contains Protobuf definitions for the Tendermint Firehose integration.

The proto file in cosmos directory are from https://github.com/cosmos/cosmos-sdk/tree/v0.45.1/proto/cosmos

`gogo.proto` come from https://github.com/regen-network/protobuf/blob/v1.3.3-alpha.regen.1/gogoproto/gogo.proto

The github workflow depend on protoc v3.20.0 and protoc-gen-go v1.27.1

https://github.com/protocolbuffers/protobuf/releases/tag/v3.20.0

```bash
go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.27.1
```
## Generate Code

To generate a new go package code from the protobuf definitions, execute:

```bash
make generate
```

## Protobuf formatting

```bash
make format
```

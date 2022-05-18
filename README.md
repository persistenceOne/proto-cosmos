# Cosmos Protobuf definitions

This repository contains Protobuf definitions for the Cosmos Firehose integration.

The GitHub workflow depends on `protoc` v3.20.1 and `protoc-gen-go` v1.27.1.

https://github.com/protocolbuffers/protobuf/releases/tag/v3.20.0

```bash
go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.27.1
```

## Generating code

To generate Go bindings for the Protobuf definitions, execute:

```bash
make generate
```

## Protobuf formatting

```bash
make format
```

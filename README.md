# tendermint-protobuf-def

This repository contains Protobuf definitions for the Tendermint Firehose integration.

The proto file in cosmos directory are from https://github.com/cosmos/cosmos-sdk/tree/v0.45.1/proto/cosmos

`gogo.proto` come from https://github.com/regen-network/protobuf/blob/v1.3.3-alpha.regen.1/gogoproto/gogo.proto


## Generate Code

To generate a new go package code from the protobuf definitions, execute:

```bash
make generate
```

## Protobuf formatting

```bash
make format
```

# tendermint-protobuf-def

This repository contains Protobuf definitions for the Tendermint Firehose integration.

## Generate Code

To generate a new go package code from the protobuf definitions, execute:

```bash
make generate
```

## Protobuf formatting

```
clang-format '--style={BasedOnStyle: google, ColumnLimit: 130, IndentWidth: 2, SpacesBeforeTrailingComments: 1, PenaltyBreakComment: 10,AlignConsecutiveAssignments: true, AlignConsecutiveDeclarations: true}' < codec.proto
```

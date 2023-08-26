proto-go-psql-jsonb

# What?

A small generator to allow protobuf message to be serialized to JSONB.

## Usage

```bash
go install github.com/jpoz/protoc-gen-go-sqljson/cmd/protoc-gen-go-sqljson
```

```bash
protoc --go-sqljson_out=. \
    --go_out=. \
    example/settings.proto
```

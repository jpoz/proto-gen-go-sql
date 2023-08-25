.PHONY: build
build:
	mkdir -p build
	go build -o build/protoc-gen-go-sqljson ./cmd/protoc-gen-go-sqljson/main.go

.PHONY: example
example: build
	protoc --plugin=protoc-gen-go-sqljson=build/protoc-gen-go-sqljson --go-sqljson_out=. \
		--go_out=. \
		example/settings.proto


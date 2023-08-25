.PHONY: build
build:
	mkdir -p build
	go build -o build/proto-go-psql-jsonb ./cmd/proto-go-psql-jsonb/main.go

.PHONY: example
example: build
	protoc --plugin=protoc-gen-psql-jsonb=build/proto-go-psql-jsonb --psql-jsonb_out=. \
		--go_out=. \
		example/settings.proto


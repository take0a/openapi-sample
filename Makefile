.PHONY: clean build

clean:
	rm -rf dist

docs: 
	redocly build-docs ./openapi/main.yaml --output=./server/spec/openapi.html --theme.openapi.disableSearch

build: clean docs
	go build -o ./dist/server ./server

start: build
	./dist/server

package main

import (
	"embed"
	"net/http"
)

//go:embed spec
var spec embed.FS

func main() {
	http.Handle("/spec/", http.FileServer(http.FS(spec)))
	http.ListenAndServe(":3000", nil)
}

package main

import (
	"net/http"
)

func main() {
	http.ListenAndServe(":9999", http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("Hello, world!"))
	}))
}

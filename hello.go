package main

import (
	"net/http"
	"time"
)

type helloHanlder struct{}

// helloHanlder implements http.Handler.
// Just print "Hello, World!" and local time
func (h *helloHanlder) ServeHTTP(w http.ResponseWriter, req *http.Request) {
	w.Write([]byte("Hello, World!"))
	w.Write([]byte("\n"))
	// print local time
	w.Write([]byte(time.Now().Local().String()))
	w.Write([]byte("\n"))
}

func main() {
	h := new(helloHanlder)
	http.ListenAndServe("0.0.0.0:8080", h)
}

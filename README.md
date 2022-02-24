This is a `hello world` program written in go lang. <br>
This program create a http server which listens on `0.0.0.0:8080`. <br> 
It will print `Hello, World!` and local time when it receive any http request. <br>
If you run this program on localhost, and `curl localhost:8080`, you will get something like this:

```
Hello, World!
2021-08-29 12:28:53.270909 +0800 CST
```

# Build

* `make`: the same as `make image`
* `make image`: build a docker image (OS=linux, Arch=amd64) tagged `cloudecho/hello:latest`
* `make build`: same as `go build -o bin/ .`

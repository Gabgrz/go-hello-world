# Go Hello World

A simple HTTP server written in Go that responds with "Hello, World!" and the current local time.

## Description

This program creates an HTTP server that listens on `0.0.0.0:8080` and responds to any HTTP request with:
- "Hello, World!" message
- Current local time

## Usage

### Running the application

```bash
# Run directly with Go
go run hello.go

# Or build and run
go build -o bin/hello hello.go
./bin/hello
```

### Testing the server

Once the server is running, you can test it with:

```bash
curl localhost:8080
```

Expected output:
```
Hello, World!
2024-01-15 14:30:45.123456 +0000 UTC
```

## Build Commands

The project includes a Makefile with the following commands:

- `make` or `make image`: Build a Docker image (OS=linux, Arch=amd64) tagged `cloudecho/hello:latest`
- `make build`: Build the Go binary locally (`go build -o bin/ .`)
- `make build2`: Cross-compile for Linux AMD64 (`GOOS=linux GOARCH=amd64 go build -o bin/ .`)
- `make push`: Build and push the Docker image to the registry

## Docker

### Building the Docker image

```bash
make image
```

### Running with Docker

```bash
docker run -p 8080:8080 cloudecho/hello:latest
```

## Project Structure

```
go-hello-world/
├── hello.go          # Main application code
├── Dockerfile        # Docker configuration
├── Makefile          # Build commands
├── docker-run.sh     # Docker run script
├── go.mod            # Go module file
└── README.md         # This file
```

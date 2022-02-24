FROM alpine:3.14

COPY bin/hello /app/hello
CMD ["/app/hello"]
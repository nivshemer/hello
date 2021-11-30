FROM alpine:3.14

COPY hello.sh /data/test/hello.sh

ENTRYPOINT ["/data/test/hello.sh"]

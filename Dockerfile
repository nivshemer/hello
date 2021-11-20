FROM alpine:3.14

COPY hello.sh /root/hello.sh

ENTRYPOINT ["/root/hello.sh"]

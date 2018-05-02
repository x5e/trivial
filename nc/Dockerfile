FROM alpine:latest
CMD nc -lk -p 1982 -e sh -c 'printf "HTTP/1.0 200 OK\r\n\r\n%s\n" `date +%s`'
EXPOSE 1982

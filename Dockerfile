FROM ubuntu:18.04
RUN apt-get update && apt-get install -y netcat
COPY . .
#CMD watch -n 0 "printf 'HTTP/1.0 200 OK\r\n\r\nOkay' | nc -l 8080" > /dev/null < /dev/null
#CMD ["bash", "-c", "for i in `seq 1 3`; do printf 'HTTP/1.0 200 OK\r\n\r\nOkay' | nc -l 8080; done"]
#CMD ["bash", "-c", "for i in 1 2 3; do printf 'HTTP/1.0 200 OK\r\n\r\nOkay' | nc -l 8080; done"]

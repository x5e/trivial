#!/bin/bash
for i in 1 2 3; do printf 'HTTP/1.0 200 OK\r\n\r\nOkay\n' | nc -l 1980; done
#watch -n 0 "printf 'HTTP/1.0 200 OK\r\n\r\nOkay' | nc -l 8080" > /dev/null

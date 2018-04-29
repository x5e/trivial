for i in `seq 1 3`; do printf "HTTP/1.0 200 OK\r\n\r\nOkay ${i}" | nc -l 8080; done 

FROM ubuntu:18.04
RUN apt-get update 
RUN apt-get install -y python3
RUN apt-get install -y curl
CMD python3 -m http.server 8080
HEALTHCHECK --interval=1s CMD curl --fail http://localhost:8080/ || exit 1
EXPOSE 8080

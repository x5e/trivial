FROM ubuntu:18.04
RUN apt-get update && apt-get install -y python3 curl
RUN echo "<html>Hello World!</html>" > /srv/index.html
WORKDIR /srv
CMD python3 -m http.server 8080
EXPOSE 8080
HEALTHCHECK --interval=1s CMD curl --fail http://localhost:8080/?ping || exit 1

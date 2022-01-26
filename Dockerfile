FROM python:3.9-slim
#FROM debian:bullseye-slim
LABEL org.opencontainers.image.source="https://github.com/chadhutchins182/temper-rest"
LABEL org.opencontainers.image.authors="Chad Hutchins <chadhutchins182@users.noreply.github.com>"
LABEL org.opencontainers.image.version="v1.0"
LABEL org.opencontainers.image.title="TEMPer USB with a REST interface, all wrapped in Docker"

RUN apt-get update && apt-get dist-upgrade -y 
    
    #apt-get install -y apt-utils python3 pip

RUN pip install pyusb temperusb

#CMD ["/usr/local/bin/temper-poll"]
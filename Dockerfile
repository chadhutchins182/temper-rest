FROM debian:bullseye-slim
LABEL org.opencontainers.image.source="https://github.com/chadhutchins182/temper-rest"
LABEL org.opencontainers.image.authors="Chad Hutchins <chadhutchins182@users.noreply.github.com>"
LABEL org.opencontainers.image.version="1.0"
LABEL org.opencontainers.image.title="TEMPer USB with a REST interface, all wrapped in Docker"

RUN apt-get update && apt-get dist-upgrade -y && \
    apt-get install python3 python3-pip libusb-0.1-4 -y

RUN pip install pyusb temperusb Flask jsonify

WORKDIR /app

COPY rest.py /app

ENV FLASK_APP=rest.py

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
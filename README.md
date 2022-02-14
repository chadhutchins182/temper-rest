# chadhutchins182/temper-rest

TEMPer USB with a REST interface, all wrapped in Docker

<div align="center">
<hr>
<br>

[![Status](https://img.shields.io/badge/status-active-success.svg)](https://github.com/chadhutchins182/temper-rest/)
[![Docker Build Only](https://github.com/chadhutchins182/temper-rest/actions/workflows/docker-build.yml/badge.svg)](https://github.com/chadhutchins182/temper-rest/actions/workflows/docker-build.yml)
[![Docker Pulls](https://img.shields.io/static/v1?label=Container%20Registry&message=GitHub&color=blue)](https://hub.docker.com/r/chadhutchins182/temper-rest)
[![GitHub Issues](https://img.shields.io/github/issues/chadhutchins182/temper-rest.svg)](https://github.com/chadhutchins182/temper-rest/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/chadhutchins182/temper-rest.svg)](https://github.com/chadhutchins182/temper-rest/pulls)
<br>

<hr>
</div>

## Table of Contents

- [About](#about)
- [Getting Started/Usage](#getting_started)
- [Contributing](#contributing)

## About <a name = "about"></a>

This code Dockerizes https://github.com/padelt/temper-python and adds a lightweight REST API using Python Flask.

## Getting Started and Usage <a name = "getting_started"></a>

1. Pull the container

    ```bash
    docker pull ghcr.io/chadhutchins182/temper-rest:latest
    ```
2. Make note of the bus and device id for your sensor
    ```bash
    $ lsusb
    Bus 001 Device 005: ID 413d:2107  
    Bus 001 Device 004: ID 0c45:7401 Microdia TEMPer Temperature Sensor
    Bus 001 Device 003: ID 0424:ec00 Microchip Technology, Inc. (formerly SMSC) SMSC9512/9514 Fast Ethernet Adapter
    Bus 001 Device 002: ID 0424:9514 Microchip Technology, Inc. (formerly SMSC) SMC9514 Hub
    Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
    ```

    When providing the device to the container, it's:``` /dev/bus/{bus-id}/{device-id}```

3. Run the container
    * Use docker run
        ```bash
        docker run -p 5000:5000 --device=/dev/bus/usb/001/004:/dev/bus/usb/001/004 --name=temperrest ghcr.io/chadhutchins182/temper-rest:latest
        ```
    * Or use docker-compose
        * A sample docker-compose is provided in the repository

## Contributing <a name = "contributing"></a>

1. Fork
2. Open Ticket for the feature or fix once you complete it
3. Pull Request referencing the Open Ticket
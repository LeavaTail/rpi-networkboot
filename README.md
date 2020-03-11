# rpi-networkboot
A repository contained docker image build DHCP/TFTP server for Raspberry Pi 3B(+).

## What is this image
This Docker image run dnsmasq on [Alpine Linux](https://hub.docker.com/_/alpine).
dnsmasq was customized minimally for boot Raspberry Pi 3B via network.
If you use this image, you must check dnsmasq.conf and rewrite.

**Caution**: `dhcp-range` and `interface` is variable by your network configuration.

## How to use this image
1. customize dnsmasq.conf (Check below item)
  * `dhcp-range`: DHCP range where the netmask is given
  * `interface`: Repeat the line for more than one interface
2. Run container
  * If you stored boot image in "/srv", you execute the following either command.

**Case 1: use Dockerfile**
```shell
 $ docker build -t rpi-networkboot .
 $ docker run -d --net=host -v tftpboot:/srv rpi-networkboot
```
**Case2: Use Docker-compose**
```shell
 $ docker-compose up -d
```

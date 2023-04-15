#!/bin/bash
apt update -y
apt install nginx -y

apt  install docker.io -y
systemctl enable docker
systemctl start docker
usermod -aG docker ubuntu
docker run -p 8080:80 nginx -y


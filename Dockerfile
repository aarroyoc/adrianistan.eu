FROM ubuntu:20.04

RUN apt-get update && apt-get install -y python3.8-dev python3-pip nodejs npm && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt
RUN npm install -g netlify-cli@2.67.0
WORKDIR /opt/adrianistan.eu

FROM debian:buster

RUN apt-get update && apt-get install -y python3.7-dev python3-pip nodejs npm && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt
RUN npm install -g netlify-cli@2.30.0

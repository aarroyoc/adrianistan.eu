FROM alpine:3.12.1

RUN apk add --no-cache python3 python3-dev py3-pip nodejs npm gcc musl-dev libffi-dev openssl-dev

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
RUN npm install -g netlify-cli@2.67.0

WORKDIR /opt/adrianistan.eu

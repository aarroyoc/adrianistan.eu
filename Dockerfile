FROM python:3.8

WORKDIR /opt/adrianistan.eu

COPY requirements.txt .
RUN pip install -r requirements.txt

CMD ["lektor", "build"]
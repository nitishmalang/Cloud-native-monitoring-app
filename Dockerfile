FROM python:3.9-slim-buster

WORKDIR /app

RUN pip3 install  --no-cache-dir -r requirements.txt
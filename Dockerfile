
FROM python:3.9-buster


WORKDIR /app


COPY . /app


RUN apt-get update && \
    apt-get install -y python3-dev && \
    pip3 install --no-cache-dir -r requirements.txt && \
    pip3 install psutil


EXPOSE 5000


CMD ["python3", "app.py"]


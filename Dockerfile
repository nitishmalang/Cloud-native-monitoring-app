# Use an official Python runtime as the base image
FROM python:3.9-buster

# Set the working directory in the container
WORKDIR /app

# Copy the application code to the container
COPY . /app

# Install the dependencies
RUN apt-get update && \
    apt-get install -y python3-dev && \
    pip3 install --no-cache-dir -r requirements.txt && \
    pip3 install psutil

# Expose the port the application runs on
EXPOSE 5000

# Set the command to run the application
CMD ["python3", "app.py"]


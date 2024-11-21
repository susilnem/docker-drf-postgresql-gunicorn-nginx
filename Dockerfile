# Use a smaller base image
FROM python:3.11-bullseye

# Set work directory
WORKDIR /app

# Set environment variables
ENV PYTHONDONTWRITEBYCODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements /app/

# Install dependencies in one layer to reduce image size
RUN apk update && \
    apk add --no-cache postgresql-dev gcc python3-dev musl-dev && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

# Copy project files
COPY . /app/
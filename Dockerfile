# official base image
FROM python:3.10.9-alpine3.17

#set work directory
WORKDIR /app

#set environment variable
ENV PYTHONDONTWRITEBYCODE 1
ENV PYTHONUNBUFFERED 1

#install pyscopg2 dependencies
RUN apk update && apk add postgresql-dev python3-dev musl-dev

#install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# copy project
COPY . .
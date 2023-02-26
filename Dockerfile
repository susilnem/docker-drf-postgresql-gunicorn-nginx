# official base image
FROM python:3.10.9-alpine3.17

#set work directory
RUN mkdir /app
WORKDIR /app

#set environment variable
ENV PYTHONDONTWRITEBYCODE 1
ENV PYTHONUNBUFFERED 1

#install pyscopg2 dependencies
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev linux-headers

#install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

#media files
RUN mkdir -p /media
RUN mkdir -p /static

# copy entrypoint.sh
COPY ./entrypoint.sh .
RUN sed -i 's/\r$//g' /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# copy project
COPY . .

# run entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]
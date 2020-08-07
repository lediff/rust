from python:3-alpine

MAINTAINER Diffen

COPY ./app/requirements.txt /app/requirements.txt

WORKDIR /app

RUN apk add --update
RUN pip install --upgrade pip
RUN pip install Flask==1.0.2
RUN rm -rf /var/cache/apk/*

COPY . /app

CMD python app.py run -h 0.0.0.0
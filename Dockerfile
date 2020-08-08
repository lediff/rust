from python:3-alpine

RUN pip install --upgrade pip

MAINTAINER Diffen

COPY ./app/requirements.txt /app/requirements.txt

WORKDIR /app

RUN apk add --update

RUN pip install --user Flask==1.0.2
RUN rm -rf /var/cache/apk/*

COPY . /app

CMD python app.py run -h 0.0.0.0
FROM python:3.7.2-stretch

MAINTAINER Diffen

COPY ./app/requirements.txt /app/requirements.txt

WORKDIR /app

RUN apk add --update
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN rm -rf /var/cache/apk/*

COPY . /app

CMD python app.py run -h 0.0.0.0
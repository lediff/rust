FROM python:3.7.2-stretch

MAINTAINER Diffen

COPY ./app/requirements.txt /app/requirements.txt

WORKDIR /app

RUN apt update
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /app

EXPOSE 80

CMD python app.py run -h 0.0.0.0
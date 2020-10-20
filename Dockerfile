FROM python:3.7-alpine
LABEL Author Maintained by Hamza AMHAL

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D zentak
USER zentak


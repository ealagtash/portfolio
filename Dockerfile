FROM python:3.9.10-slim-buster

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /home/app

COPY requirements.txt .

RUN pip install -r requirements.txt
# syntax=docker/dockerfile:1
### this 1st line above is to pick up the latest syntax parser ###

### base image to use ###
FROM python:3.9-slim-buster

### set up default working directory ###
WORKDIR /app

### copy/add library dependencies ###
COPY requirements.txt requirements.txt

### install dependencies ###
RUN pip install -r requirements.txt

### copy/add source code to the image ###
COPY . .

### commands to run ###
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]


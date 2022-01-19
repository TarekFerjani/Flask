# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN pip install flask twilio wtforms flask-bootstrap flask-wtf
COPY . .
EXPOSE 8080
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]

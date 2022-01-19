# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /python-docker
RUN python3 -m venv venv
RUN source venv/bin/activate  
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN pip install flask twilio wtforms flask-bootstrap flask-wtf
RUN pip install -U Werkzeug==0.16.0

COPY . .
EXPOSE 8080
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]

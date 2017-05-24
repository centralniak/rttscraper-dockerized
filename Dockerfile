FROM alpine:latest

RUN apk add --update git python3 wget
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 /get-pip.py

ADD crontab /crontab
RUN crontab /crontab

ADD config.json /config.json

ADD code /code
RUN pip install -r /code/requirements.txt

CMD crond -f

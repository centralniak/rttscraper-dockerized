FROM alpine:latest

RUN apk add --update python3

ADD code/requirements.txt /code/requirements.txt
RUN pip3 install -r /code/requirements.txt

ADD code /code

ADD config.json /config.json
CMD python3 /code/scraper.py -c /config.json

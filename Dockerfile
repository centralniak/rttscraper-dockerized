FROM alpine:latest

RUN apk add --update python3

ADD config.json /config.json

ADD code /code
RUN pip3 install -r /code/requirements.txt

CMD python3 /code/scraper.py -c /config.json

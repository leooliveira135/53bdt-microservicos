FROM python:3-alpine

MAINTAINER Leonardo Oliveira <rm340189@fiap.com.br>

RUN chmod +x api.py

ADD api.py requirements.txt /
RUN pip install -r ./requirements.txt

ENV PORT=5000

EXPOSE $PORT
HEALTHCHECK CMD curl --fail http://localhost:$PORT || exit 1


CMD ["./api.py"]
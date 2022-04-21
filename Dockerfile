FROM python:3.11-rc-alpine3.14

RUN apk add --no-cache build-base linux-headers libffi-dev
RUN pip3 install rns

VOLUME /root/.reticulum

ENTRYPOINT ["rnsd"]

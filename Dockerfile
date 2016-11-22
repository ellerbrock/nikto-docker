FROM alpine:edge

MAINTAINER Maik Ellerbrock (https://github.com/ellerbrock)

RUN apk update && \
  apk add --no-cache nikto && \
  rm -f /tmp/* /etc/apk/cache/*

ENTRYPOINT ["nikto.pl"]

CMD [ "-Help"]

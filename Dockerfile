FROM alpine:latest

COPY . ./hugo/

RUN apk add hugo

WORKDIR /hugo
EXPOSE 8095/tcp

ENTRYPOINT ["sh", "/hugo/runhugo.sh"]

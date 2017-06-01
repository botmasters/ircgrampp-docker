FROM mhart/alpine-node:6

RUN apk add --no-cache git

RUN npm install -g --no-optional ircgrampp@0.1.9

RUN adduser -D -u 1000 ircgrampp

RUN mkdir -p /data /config /def; \
    chown ircgrampp:ircgrampp /data

VOLUME /config /data

ENV ONLY ""
ENV DEBUG "session,bridge"
ENV EXTRAPARAMS ""

ADD files/config.yml /def
ADD files/entry.sh /

ENTRYPOINT ["/entry.sh"]

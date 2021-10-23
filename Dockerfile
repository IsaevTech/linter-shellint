FROM alpine:3.13
RUN apk --no-cache add shellcheck=0.7.1-r2
COPY lint /usr/local/bin/lint
WORKDIR /code
CMD ["lint"]
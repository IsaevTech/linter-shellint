FROM alpine:3
ARG VERSION=0.8.0-r0
RUN apk --no-cache add shellcheck=${VERSION}
COPY lint /usr/local/bin/lint
WORKDIR /code
CMD ["lint"]
FROM alpine:3.7

RUN apk add --no-cache libc6-compat go
WORKDIR /app

COPY . /app
ENV GIN_MODE=release

CMD ./main $PORT

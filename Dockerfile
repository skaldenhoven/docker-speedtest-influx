FROM node:8
MAINTAINER Sander Kaldenhoven

WORKDIR /usr/src/app

ENV INFLUXDB_DB="speedtest" \
    INFLUXDB_URL="http://localhost:8086" \
    SPEEDTEST_HOST="local" \
    SPEEDTEST_INTERVAL=3600

COPY . .

RUN npm install -g speed-test json

CMD [ "npm", "start" ]

FROM node:8
MAINTAINER Jonas Friedmann <j@frd.mn>

WORKDIR /usr/src/app

ENV INFLUXDB_DB="speedtest" \
    INFLUXDB_URL="http://10.20.40.1:8086" \
    SPEEDTEST_HOST="local" \
    SPEEDTEST_INTERVAL=3600

COPY . .

RUN npm install -g speed-test json

CMD [ "npm", "start" ]

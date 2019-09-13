# Docker speedtest - output to Influx
Based on the work of https://github.com/frdmn/docker-speedtest so a big thank you.

The idea is to get a separate instance of speedtest which will send the results to 1 central InfluxDB.
For this to work some parameters can be changed with environment variables.

You can make use of the following environment variables / configurations:

| Environment variable | Default value | Description
|----------------------|---------------|------------|
| `SPEEDTEST_INTERVAL` | `3600` | Interval/pause (in seconds) between speedtests (Hourly) |
| `SPEEDTEST_HOST` | `local` | Display name of the client where measurements are taken |
| `INFLUXDB_DB` | `speedtest` | Database to save speedtest results |
| `INFLUXDB_URL` | `http://localhost:8086` | URL of InfluxDB |

## Usage

```shell
docker run -d --name=speedtest \
-e INFLUXDB_URL=http://influxdbhost:8086 \
-e SPEEDTEST_INTERVAL=600 \
-e SPEEDTEST_HOST=Home \
skaldenho/speedtest-influx
```

This will spin up an instance which will do a speedtest every 10 minutes (600 seconds) and send the results to an influxdb running on host influxdb.
The SPEEDTEST_HOST variable can be used to differentiate between different locations / hosts from which the test is performed.
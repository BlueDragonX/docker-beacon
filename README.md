Docker Beacon Image
===================
Run [Beacon][1] in Docker.

Building
--------
To do the thing:

    git clone https://github.com/BlueDragonX/docker-beacon.git
    docker build --rm -t bluedragonx/beacon docker-beacon

Configuration
-------------
The following environment variables control how Beacon is run. They are mapped
to the specified config file directives. See the [Beacon README][1] for
additional details.

- `BEACON_SERVICE_HEARBEAT` - How often to poll Docker. The `service.heartbeat` value.
- `BEACON_SERVICE_TTL` - How long after a poll should a service expire. The `service.ttl` value.
- `BEACON_DOCKER_URI` - The Docker URI to connect to. The `docker.uri` value.
- `BEACON_ETCD_URI` - The etcd URI to connect to. The `etcd.uri` value.
- `BEACON_ETCD_PREFIX` - The etcd prefix. The `etcd.prefix` value.
- `BEACON_LOG_LEVEL` - The logging level to use. The `logging.level` value.
- `BEACON_LOG_CONSOLE` - Whether or not to enable console logging. The `logging.console` value.
- `BEACON_LOG_SYSLOG` - Whether or not to enable syslog logging. The `logging.syslog` value.

License
-------
Copyright (c) 2014 Ryan Bourgeois. Licensed under BSD-Modified. See the LICENSE

[1]: https://github.com/BlueDragonX/beacon "Beacon"

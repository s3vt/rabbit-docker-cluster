# RabbitMQ Docker DNS based Discover Docker Clustering
[RabbitMQ](https://www.rabbitmq.com/) clustering on [Docker](https://www.docker.com/) using [DNS discovery ](https://www.rabbitmq.com/cluster-formation.html#peer-discovery-dns).

## How is done.
# Does not work
RabbitMQ workers are configured with  

```
cluster_formation.peer_discovery_backend = dns
cluster_formation.dns.hostname = rabbit@rabbitseed
```

## Use the samples
[Makefile](Makefile) is provided for each cluster formation using docker-compose

### Make Targets

    make up
    make down

### Access
ngix is included to listen on 4000, RabbitMQ manageement page can be accessed at [localhost:4000](localhost:4000)

## Files
### rabbit.conf
RabbitMQ configuration file.
### nginx.conf
Nginx backend and proxy pass configuration file.
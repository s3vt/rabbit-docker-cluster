# RabbitMQ Peer Discovery Classic Docker Clustering

[RabbitMQ](https://www.rabbitmq.com/) clustering on [Docker](https://www.docker.com/) using [Peer Discovery](https://www.rabbitmq.com/cluster-formation.html#peer-discovery-configuring-mechanism).


## How is done.
RabbitMQ is configured with all peers beforehand using 

```
cluster_formation.peer_discovery_backend = rabbit_peer_discovery_classic_config
cluster_formation.classic_config.nodes.1 = rabbit@rabbit-1
cluster_formation.classic_config.nodes.2 = rabbit@rabbit-2
cluster_formation.classic_config.nodes.3 = rabbit@rabbit-3
```

Cluster formation is configured as 
```
cluster_formation.discovery_retry_limit = 20
cluster_formation.discovery_retry_interval = 5000
```

Three services are configured using docker-compose.yml with hostnames as rabbit-1, rabbit-2 and rabbit-3.

These instances will keep waiting for other to come up within the cluster retry time.

## Use the samples
[Makefile](Makefile) is provided for each cluster formation using docker-compose

    make up 
    make down

### Access
ngix is included to listen on 4000, RabbitMQ manageement page can be accessed at [localhost:4000](localhost:4000)

## Files
### rabbit.conf
RabbitMQ configuration file.
### nginx.conf
Nginx backend and proxy pass configuration file.

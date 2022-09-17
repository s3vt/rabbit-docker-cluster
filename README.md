# RabbitMQ Docker Clustering
[RabbitMQ](https://www.rabbitmq.com/) clustering on [Docker](https://www.docker.com/) using different clustering approaches.

## Clustering Methods 
1. [Script](./script)  
Uses [rabbitmqctl](https://www.rabbitmq.com/rabbitmqctl.8.html) commands to join the cluster.
1. [Peer Discovery classic Config](./classic)  
Classic config using [Peer Discovery](https://www.rabbitmq.com/cluster-formation.html#peer-discovery-configuring-mechanism)
1. [DNS](./dns)  
DNS config using [DNS discovery ](https://www.rabbitmq.com/cluster-formation.html#peer-discovery-dns)



## Use the samples
[Makefile](Makefile) is provided for each cluster formation using docker-compose

### Make Targets

1. Classic   

       make classic-up 
       make classic-down

1. Script  

       make script-up
       make script-down
1. DNS   

       make dns-up
       make dns-down

### Access
ngix is included to listen on 4000, RabbitMQ manageement page can be accessed at [localhost:4000](localhost:4000)

## Files
### rabbit.conf
RabbitMQ configuration file.
### nginx.conf
Nginx backend and proxy pass configuration file.



# RabbitMQ Docker Clustering 


## How is done.
RabbitMQ slave startup is handled in [entrypoint.sh](entrypoint.sh) as follows:  
1. RabbitMQ server process is started in detached mode.
1. This instance is made to join the `rabbit@rabbit-seed`  cluster using enviroment variable `CLUSTER_SEED`
1. RabbitMQ Server process is restarted for changes to take effect.

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



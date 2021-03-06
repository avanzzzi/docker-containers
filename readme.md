# Multipurpose Docker Containers

## Using docker-compose
Start all services defined in a docker-compose file
```
> docker-compose -f compose.yml up [-d] 
```
Stop all services defined in a docker-compose file
```
> docker-compose -f compose.yml down
```
Or, if you want to run individual services
```
> docker-compose -f compose.yml run --service-ports dns
> docker-compose -f compose.yml run --service-ports web
```

## Webserver
To monitor the traffic of the webserver
```
> docker exec -it docker_web sh
> tail -f /var/log/apache2/access.log
```

## Using docker
Build, tag and run containers directly from dockerfiles

### dns
```
> docker build -t dns bind
```
```
> docker run \
  -p 53:53/udp \
  -p 53:53/tcp \
  -v $PWD/bind/conf:/etc/bind \
  --name docker_dns dns
```

### web
```
> docker build -t web apache
```
```
> docker run \
  -p 80:80 \
  -p 443:443 \
  -v $PWD/apache/conf/httpd.conf:/etc/apache2/httpd.conf \
  -v $PWD/apache/conf/vhosts.conf:/etc/apache2/conf.d/vhosts.conf \
  -v $PWD/apache/localhost:/var/www/localhost/htdocs \
  -v $PWD/apache/example.com:/var/www/example.com/htdocs \
  --name docker_web web
```
For the containers above, take a look at docker-compose.yml to see exposed ports and volumes.

### x-forward
This image is not present in the docker-compose.yml. To build it, run the following command
```
> docker build -t x x-forward
```
The start script will allow local connections to the running x socket and start the container.
```
> x-forward/start.sh x
```

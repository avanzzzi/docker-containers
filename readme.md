# Multipurpose Docker Containers

Run all services defined in docker-compose.yml
```
> docker-compose up
```
Or, if you want to run individual services
```
> docker-compose run --service-ports dns
> docker-compose run --service-ports web
```
Build and run containers directly from dockerfiles
```
> docker build -t dns bind
> docker build -t web apache 
```
Take a look at docker-compose.yml to see exposed ports and volumes
```
> docker run -p 53:53/udp -p 53:53/tcp -v $PWD/bind/conf:/etc/bind --name docker_dns dns

> docker run \
  -p 80:80 \
  -p 443:443 \
  -v $PWD/apache/conf:/etc/apache2 \
  -v $PWD/apache/localhost:/var/www/localhost \
  -v $PWD/apache/iznv.com:/var/www/iznv.com \
  --name docker_web web
```

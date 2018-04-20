# Generic X Container

## Build
```
> docker build -t <tag> .
```

## Run
```
> ./start.sh <tag>
```
docker-compose run --service-ports dns
docker run -p 53:53/udp -v $PWD/conf:/etc/bind dns 

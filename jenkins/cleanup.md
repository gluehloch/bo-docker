
## list all exited containers
```
docker ps -aq -f status=exited
```

## remove all stopped containers
```
docker ps -aq --no-trunc -f status=exited
docker ps -aq --no-trunc -f status=exited | xargs docker rm
```
## list all created containers
```
docker ps -aq --no-trunc -f status=created
docker ps -aq --no-trunc -f status=created | xargs docker rm
```

## remove dangling/untagged images
```
docker images -q --filter dangling=true
docker images -q --filter dangling=true | xargs docker rmi
```

## remove all unused volumes
```
docker volume prune -f
```

## Remove conatainers created after a specific container
```
docker ps --since a1bz3768ez7g -q | xargs docker rm
```

## Remove containers created before a specific container
```
docker ps --before a1bz3768ez7g -q | xargs docker rm
```
# DataDome OpenResty container
This repo tests the [DataDome OpenResty module](https://docs.datadome.co/docs/openresty), developed using Lua and [nginx modules directives](https://openresty-reference.readthedocs.io/en/latest/Directives/).

The base of the container is the official [OpenResty docker image](https://hub.docker.com/r/openresty/openresty) running on ubuntu jammy.


## 1 -  Configuration
Open the simple/example file nginx.conf and set your sever-side-key


## 2 - Build the docker image
```
docker image build . -t my-openresty
```

## 3 - Run the docker image
```
docker run -d --rm --name myOpenResty -p 8282:80 my-openresty
```

## Test
```
curl -v  http://localhost:8282/
```
You should be able to see DataDome cookie

## Logs
```
docker logs -f myOpenResty
```

## Stop
```
docker stop  myOpenResty
```



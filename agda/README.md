# Agda

## Build

```PowerShell
docker image build -t gdmcbain/agda:2.6.4 .
```

## Use

### Compile and run

```PowerShell
docker container run -it --rm  -v ${pwd}:/w -w /w gdmcbain/agda:2.6.4 agda --compile ./hello-world.agda
docker container run -it --rm  -v ${pwd}:/w -w /w gdmcbain/agda:2.6.4 ./hello-world
```

> Hello world!

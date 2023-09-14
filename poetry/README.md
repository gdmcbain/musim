# Poetry

[**Poetry**](<https://python-poetry.org/>):

> Python packaging and dependency management made easy.

The point of this `image` is to be able to effectively call

```shell
poetry new my-new-app
```

## Usage

### Build

```PowerShell
$IMAGE=gdmcbain/poetry:1.6
docker build -t $IMAGE .
docker push $IMAGE
```

### Run: Set up a new project

```PowerShell
docker run -it --rm -v .:/workdir $IMAGE python -m poetry new a-package
Get-ChildItem a-package
```

## Readings

- [How to use Poetry with Docker](<https://stackoverflow.com/questions/72465421/how-to-use-poetry-with-docker>)
- [Elegantly activating a virtualenv in a Dockerfile](<https://pythonspeed.com/articles/activate-virtualenv-dockerfile/>)

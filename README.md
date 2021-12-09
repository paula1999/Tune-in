# Infraestructura Virtual 21-22: Tune-in

## Descripción

En este proyecto se ha desarrollado una aplicación para notificar 
al usuario cuando sus artistas favoritos publican una nueva canción.
Además, incorporará un sistema de sugerencias basado tanto en gustos similares entre los usuarios como la ubicación de estos.

## Issues

Descripción de las [historias de usuario](https://github.com/paula1999/Tune-in/blob/main/docs/historias_de_usuario.md) correspondientes a las issues de este repositorio.

## Automatización

Haremos uso del [Rakefile](https://github.com/paula1999/Tune-in/blob/main/Rakefile). 

### Instalación

Para ello, necesitaremos tener instalado RVM como se indica a continuación.

```
\curl -sSL https://get.rvm.io | bash -s stable
```

De esta forma, ya podemos instalar las herramientas necesarias.


```
gem install bundler
```


Ahora, ya podremos instalar las dependencias ejecutando el siguiente comando.

```
rake installdeps
```

### Test

Para testear que el código funciona correctamente, ejecutaremos lo siguiente.

```
rake test
```

Se ha utilizado la herramienta `rspec`, cuya información se puede encontrar [aquí](https://github.com/paula1999/Tune-in/blob/main/docs/test_runners.md)

### Check

Para comprobar si la sintaxis de las entidades programadas es correcta, ejecutaremos

```
rake check
```

### Contenedor

Se ha diseñado un contenedor, usando Docker, para aislar la ejecución de la aplicación de forma que sea mucho más fácil desplegarla.

Para ello, se ha creado el archivo [Dockerfile](https://github.com/paula1999/Tune-in/blob/main/Dockerfile). La justificación de esta elección se puede encontrar [aquí](https://github.com/paula1999/Tune-in/blob/main/docs/docker.md)


Además, se ha añadido una [Github Action](https://github.com/paula1999/Tune-in/blob/main/.github/workflows/docker-publish.yml) para publicar la imagen a [Docker Hub](https://hub.docker.com/repository/docker/paula1999/tune-in).


### Integración continua

Se ha utilizado el servicio [Circle CI](https://circleci.com/) para automatizar el lanzamiento de los tests.

Para ello, hemos [configurado](https://github.com/paula1999/Tune-in/blob/main/.circleci/config.yml) este servicio y su justificación se puede encontrar [aquí](https://github.com/paula1999/Tune-in/blob/main/docs/continuous_integration.md)
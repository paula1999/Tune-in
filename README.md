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

Para ello, necesitaremos tener instalado `rake`, `gem` y `ruby-bundler` como se indica a continuación.

```
sudo apt install rake
sudo apt install gem
sudo apt install ruby-bundler
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

### Check

Para comprobar si la sintaxis de las entidades programadas es correcta, ejecutaremos

```
rake check
```
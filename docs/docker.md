# Contenedor

Para este proyecto será necesario utilizar la versión 3 de Ruby y las herramientas `rake` y `rspec`.
Por lo que será necesario que nuestro contenedor disponga de esos requisitos.
Además, buscaremos un contenedor que sea ligero y rápido.

En [esta página](https://hub.docker.com/_/ruby) podemos encontrar las distintas imágenes de Ruby.
También se pueden encontrar las distintas versiones que ofrece, cada una para un caso de uso específico: 
`ruby:<version>`, `ruby:<version>-slim` y `ruby:<version>-alpine`.

Usaremos la versión `3.1`, pues quiero que se testee con la última versión estable y ofrece mantenimiento.

La versión por defecto, no contiene paquetes adicionales más alla de los que vienen con la imagen, por lo que será
necesario especificarlos para minimizar roturas cuando haya nuevas versiones. 

La versión `slim` no contiene los paquetes comunes y solo tiene los paquetes mínimos necesarios para ejecutarse `ruby`.

La versión `alpine` se basa en la distribución [Alpine](https://www.alpinelinux.org/). Destaca que genera 
imágenes mucho más pequeñas y se adapta mejor a los requisitos de este proyecto.

Para realizar la elección del contenedor, he probado con varias versiones de la `3.1` y he obtenido los siguientes resultados:

- Versión `3.1-rc`: el tamaño que ocupa es de 913MB.
- Versión `3.1-rc-alpine`: el tamaño que ocupa es de 88.9MB.
- Versión `3.1-rc-slim`: el tamaño que ocupa es de 195MB.
- Versión `3.1-rc-buster`: el tamaño que ocupa es de 883MB.

La versión por defecto y la `slim` no nos servirán para este proyecto, pues carecen de los paquetes necesarios y 
ofrecen tamaños de imágenes muy grandes.

En conclusión, se ha decidido elegir la versión `alpine`, en concreto la última, `3.1-rc-alpine`, pues es la última versión.
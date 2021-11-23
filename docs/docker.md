# Contenedor

Se ha elegido la última versión, `3.1-rc-alpine`, pues [Alpine](https://www.alpinelinux.org/) es una distribución que genera imágenes ligeras y seguras. Además, en este proyecto no ha generado ningún problema.

Para realizar esa elección, he probado con varias versiones y he obtenido los siguientes resultados:

- Versión `3.1-rc`: el tamaño que ocupa es de 892MB.
- Versión `3.1-rc-alpine`: el tamaño que ocupa es de 68.2MB.
- Versión `3.1-rc-slim`: el tamaño que ocupa es de 174MB.
- Versión `3.1-rc-buster`: el tamaño que ocupa es de 862MB.

Por lo que he elegido utilizar la que ofrece un tamaño más pequeño, la versión `3.1-rc-alpine`.
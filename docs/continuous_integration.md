# Integración continua (CI)

Una vez automatizada la actualización del contenedor en Docker Hub, 
necesitamos lanzar los tests automáticamente y comprobar las diferentes versiones
que soporta este proyecto. Para ello, necesitaremos un servicio de integración continua.

Existen varios servicios de integración continua, tales como [Travis-CI](https://www.travis-ci.com/), 
[Circle-CI](https://circleci.com/), [Semaphore-CI](https://semaphoreci.com/), etc.

Para comprobar las diferentes versiones que soporta este proyecto, he elegido el sistema 
[Travis-CI](https://www.travis-ci.com/) y lo he [configurado](https://github.com/paula1999/Tune-in/blob/main/.travis.yml). 
La principal razón por la que se ha utilizado este sistema es que, a diferencia del resto, 
permite de forma muy fácil probar el proyecto con diferentes versiones de Ruby. Además, 
es muy fácil sincronizarlo con GitHub y configurarlo. Es por esto que cumple con los requisitos para 
ser considerado como servicio de integración continua.
Teniendo en cuenta que este proyecto utiliza, 
como mínimo (pues hace uso del sistema de anotación de tipos RBS), la versión 
3.0 (que es la última versión estable) y que la última versión de Ruby es la 3.1 (que actualmente está en desarrollo),
se ha probado este sistema con estas versiones, como se puede ver en mi 
[perfil](https://app.travis-ci.com/github/paula1999/Tune-in)

Como segundo sistema, para lanzar los tests automáticamente, he elegido [Circle-CI](https://circleci.com/) 
y lo he [configurado](https://github.com/paula1999/Tune-in/blob/main/.circleci/config.yml). Este sistema 
tiene una configuración sencilla y permite conectarse con GitHub. Para ello, se ha tenido 
que configurar para que use el checks API. Por lo que este sistema también cumple con los requisitos para ser considerado 
como servicio de integración continua. En mi [perfil](https://app.circleci.com/pipelines/github/paula1999/Tune-in)
se puede encontrar el historial de los tests realizados.
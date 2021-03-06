# Elección de lenguaje de programación
## Decisión
**Ruby** será el lenguaje de programación utilizado para este proyecto.

## Motivación

Empezando por los criterios especificados en [#7](https://github.com/paula1999/Tune-in/issues/7), Ruby no solo permite el uso de composición mediante mixins, sino que también permite la creación de interfaces que posteriormente implementarán las clases del proyecto. Esto último nos permite entre otras cosas realizar una clara separación entre la lógica de negocio de las clases y sus interfaces.

Respecto al tipado, en Ruby se aplica el "Duck Typing", es decir, se sigue la lógica de "Si anda como un pato y suena como un pato entonces se tratará de un pato", dándole más importancia a la presencia de un método o atributo que a la comprobación de tipos. Esto se aleja de la comprobación de tipos en tiempo de compilación que se realiza en otros lenguajes como Java o C#, pero por suerte existen herramientas como [Sorbet](https://sorbet.org/) que usadas en conjunto con el nuevo sistema de anotación de tipos **RBS** incluido en Ruby 3 permiten la comprobación estática de tipos y la descripción de estructuras en Ruby de manera rápida y fácil.

Por último, cabe destacar también la motivación personal de aprender más sobre un lenguaje no tan mainstream.

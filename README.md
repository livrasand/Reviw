![Reviw Logo](https://github.com/livrasand/Reviw/assets/104039397/3202a0b1-266c-4815-a4ba-35b470965e7a)
> ##### Si consideras útil este proyecto, apóyalo haciendo "★ Star" en el repositorio. ¡Gracias!

#
Reviw es un lenguaje de marcado de código abierto, escrito en HTML, diseñado para crear documentos, con el objetivo de facilitar el desarrollo de archivos JWPUB. Reviw está basado en [JWLV-API](https://github.com/livrasand/JW-Library-Visualizer-API) que proporciona una interfaz de alto nivel que permite mostrar documentos basados en JWPUB. [JWLV-API](https://github.com/livrasand/JW-Library-Visualizer-API) interpreta el código y lo presenta en pantalla al usuario permitiendo al usuario interactuar con su contenido y navegar idénticamente como lo hace JW Library.

Reviw lo utiliza el editor [Sublime Text](https://github.com/sublimehq) y próximamente muchas otras aplicaciones.

**No acepto donaciones para Reviw.** En lugar de eso, preferiría que consideraras destinar tu apoyo económico a [Donar a los testigos de Jehová](https://donate.jw.org/), una causa que considero de gran importancia. Si [Donar a los testigos de Jehová](https://donate.jw.org/) no está disponible en tu región, te animo a hacer una donación a alguna de las organizaciones sin fines de lucro que respaldo, como el [Proyecto Tor](https://donate.torproject.org/) o [Tails](https://tails.net/), o proyectos de [mis repositorios](https://github.com/livrasand?tab=repositories) que admitan donaciones.

Estoy dispuesto a colaborar de manera específica con aquellos que deseen contribuir al proyecto. Puedes encontrar detalles sobre cómo contribuir en el archivo [CONTRIBUTING.md](CONTRIBUTING.md). Sin embargo, quiero enfatizar que **no promuevo ni respaldo la creación de productos, servicios o cualquier otra iniciativa relacionada con Reviw que tenga como objetivo generar ingresos**.

Además, es importante tener en cuenta que cualquier colaboración de este tipo **no cuenta con el respaldo de Reviw ni de un servidor, y desalentamos a los usuarios de Reviw a adquirir o participar en proyectos que busquen beneficios económicos a costa de la comunidad Reviw**.

## ¿Cómo funciona?
Reviw es un lenguaje que empodera a los desarrolladores de JWPUB, simplificando la escritura de código HTML. Con Reviw, podrás crear expresiones (abreviaturas) de manera similar a una conversación y convertirlas en fragmentos de código con solo presionar una tecla. Por ejemplo, esta abreviatura:

```html
crear>copyright
```

...se expandirá en:

```html
<div class="copyrightInfo">
   <p id="p$1" data-pid="$1" class="si">Impresión de abril de&nbsp;2023</p>
   <p id="p$2" data-pid="$2" class="si">© 2021 WATCH TOWER BIBLE AND TRACT SOCIETY OF PENNSYLVANIA</p>
</div>
```


## 💕 Contribuciones

¡Agradecemos tu interés en contribuir al proyecto Reviw! Si deseas hacer contribuciones, por favor, lee nuestra [guía de contribución](CONTRIBUTING.md) para obtener más detalles sobre cómo puedes ayudar en diferentes aspectos del proyecto.

Esperamos con interés trabajar contigo y mejorar juntos Reviw. ¡Gracias por ser parte de nuestra comunidad!

## Comienza a Programar con Reviw

Reviw es un plugin para Sublime Text que te permite crear archivos HTML y contribuir a la creación de archivos JWPUB para JW Library. Mira nuestros JWPUB en HTML de ejemplo [aquí](https://github.com/livrasand/livrasand.github.io/tree/main/jwpub-catalog), solo ingresa al directorio del archivo deseado.

Aprende a crear tu propio JWPUB en nuestra [guía de contribución](CONTRIBUTING.md), contienen mucha información, tómese su tiempo y lea atentamente estas instrucciones.

Si es principiante en los JWPUB, puede comenzar por [Getting started](https://github.com/livrasand/Reviw/wiki/Getting-started), comprenda que es un JWPUB y como funciona.

## Instalación con Package Control
Instala el empaquetado de Reviw para Sublime Text, para ello ejecuta Command Palette: <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd>.

Escribe:
```html
Package Control: Install Package
```

Cuando haya cargado Package Control, busque Reviw seguido de <kbd>Intro</kbd>.
```html
Reviw
```

Esto instalará Reviw en Sublime Text.

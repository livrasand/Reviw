<div align="center"><a href="README.md"><img src="https://custom-icon-badges.demolab.com/badge/Español-white.svg?logo=mexico-flag&"></a>&nbsp;&nbsp;<a href="README-en.md"><img src="https://custom-icon-badges.demolab.com/badge/English-white.svg?logo=usa-flag"></a>&nbsp;&nbsp;<a href="README-it.md"><img src="https://custom-icon-badges.demolab.com/badge/Italiano-white.svg?logo=italy-flag"></a>&nbsp;&nbsp;<a href="README-cn.md"><img src="https://custom-icon-badges.demolab.com/badge/中国人-white.svg?logo=china-flag"></a></div>
<br>

![Reviw Logo](https://github.com/livrasand/Reviw/assets/104039397/3202a0b1-266c-4815-a4ba-35b470965e7a)
> ##### Si consideras útil este proyecto, apóyalo haciendo "★ Star" en el repositorio. ¡Gracias!

¿Te imaginas crear JWPUBs con un lenguaje tan sencillo como HTML? Reviw es un lenguaje de marcado de código abierto, escrito en HTML, que te permite crear documentos JWPUB con facilidad. Basado en la **API JWLV**, Reviw te ofrece una interfaz de alto nivel que te permite visualizar tus documentos de forma idéntica a como lo hace JW Library.

Reviw es una herramienta gratuita, sin publicidad y de código abierto que está disponible para todos.

**¿Qué esperas para probarla?**

---

**No acepto donaciones para Reviw.** En lugar de eso, preferiría que consideraras destinar tu apoyo económico a [Donar a los testigos de Jehová](https://donate.jw.org/), una causa que considero de gran importancia. Si [Donar a los testigos de Jehová](https://donate.jw.org/) no está disponible en tu región, te animo a hacer una donación a alguna de las organizaciones sin fines de lucro que respaldo, como el [Proyecto Tor](https://donate.torproject.org/) o [Tails](https://tails.net/), o proyectos de [mis repositorios](https://github.com/livrasand?tab=repositories) que admitan donaciones.

**No promuevo ni respaldo la creación de productos, servicios o cualquier otra iniciativa relacionada con Reviw que tenga como objetivo generar ingresos, y desalentamos a los usuarios de Reviw a adquirir o participar en proyectos que busquen beneficios económicos a costa de la comunidad Reviw**.

---

## ¿Cómo funciona?
Nuestros CDNs actúan como intermediarios que permiten cargar y entregar tus archivos HTML con nuestra API **JWLV**, Reviw utiliza estos CDNs para proporcionar una representación precisa de tus archivos HTML en un entorno similar al de JW Library, permitiéndote tener una idea precisa de cómo se verán tus proyectos antes de publicarlos. Esto facilita la revisión y la optimización de tu trabajo durante el proceso de desarrollo.
```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/livrasand/livrasand.github.io@main/JW-Library-Visualizer-API/4a57204c696272617279.css">
<script type="text/javascript" src="https://cdn.jsdelivr.net/gh/livrasand/livrasand.github.io@main/JW-Library-Visualizer-API/4a57204c696272617279.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/gh/livrasand/livrasand.github.io@main/JW-Library-Visualizer-API/496d6167656e6573.js"></script>
```
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

## Comienza a programar
Le recomiendo encarecidamente que consulte la [documentación de Reviw](https://livrasand.github.io/Reviw/). Allí encontrarás todos los componentes existentes de un JWPUB, colores, fuentes y más reglas.

Aprende a crear tu propio JWPUB en nuestra [guía de contribución](CONTRIBUTING.md), contienen mucha información, tómese su tiempo y lea atentamente estas instrucciones.

Si es principiante en los JWPUB, puede comenzar por [Getting started](https://github.com/livrasand/Reviw/wiki/Getting-started), comprenda que es un JWPUB y como funciona.

## ⚙️ Instalación
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

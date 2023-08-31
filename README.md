![Reviw Logo](https://github.com/livrasand/Reviw/assets/104039397/3202a0b1-266c-4815-a4ba-35b470965e7a)
> ##### Si consideras útil este proyecto, apóyalo haciendo "★ Star" en el repositorio. ¡Gracias!

#
Reviw es un lenguaje de marcado de código abierto, escrito en HTML, diseñado para crear documentos, con el objetivo de facilitar el desarrollo de archivos JWPUB. Reviw está basado en [JWLV-API](https://github.com/livrasand/JW-Library-Visualizer-API) que proporciona una interfaz de alto nivel que permite mostrar documentos basados en JWPUB. [JWLV-API](https://github.com/livrasand/JW-Library-Visualizer-API) interpreta el código y lo presenta en pantalla al usuario permitiendo al usuario interactuar con su contenido y navegar idénticamente como lo hace JW Library.

Reviw lo utiliza el editor [Sublime Text](https://github.com/sublimehq) y próximamente muchas otras aplicaciones.

Este proyecto se adhiere a la licencia <b>GoAttendant Zero Public License</b>. Al participar, se espera que respete este código. Informe cualquier comportamiento inaceptable.

No acepto donaciones para Reviw. Preferiría que gastaras tu dinero en [Donar a los testigos de Jehová](https://donate.jw.org/). Si [Donar a los testigos de Jehová](https://donate.jw.org/) no se ofrece en su región, le sugiero donar a una organización sin fines de lucro como el [Proyecto Tor](https://donate.torproject.org/). Si bien, no acepto donaciones para Reviw, si acepto una aportación por [Asistencia prioritaria](https://github.com/bedan1/Reviw/edit/main/README.md#asistencia-prioritaria) (Aunque esta no es obligatoria). Hacer algo que implique algo positivo para otras personas siempre es gratificante, especialmente cuando ves el impacto positivo que tiene tu dedicación y trabajo. De antemano me tomo un momento para agradecerte de corazón por tu generosidad y apoyo. 

## Usabilidad
Reviw es un lenguaje para desarrolladores de JWPUB para impulsar la escritura de código HTML.

Con Reviw, puede escribir expresiones (abreviaturas) similares al dialogar con una persona y convertirlas en fragmentos de código con una sola pulsación de tecla. Por ejemplo, esta abreviatura:

```html
crear>copyright
```
...puede expandirse en:
```html
<div class="copyrightInfo">
   <p id="p$1" data-pid="$1" class="si">Impresión de abril de&nbsp;2023</p>
   <p id="p$2" data-pid="$2" class="si">© 2021 WATCH TOWER BIBLE AND TRACT SOCIETY OF PENNSYLVANIA</p>
</div>
```
Aprende a crear tu propio JWPUB en nuestra [wiki](https://github.com/livrasand/Reviw/wiki), el documento Reviw [README](https://github.com/livrasand/Reviw#readme) contienen mucha información también, tómese su tiempo y lea atentamente estas instrucciones.

Si es principiante, puede comenzar por [Getting started](https://github.com/livrasand/Reviw/wiki/Getting-started).

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

## Instalación manual
Si la instalación mediante Package Control no te funciona, prueba la instalación manual, descarga el Package en tu idioma [aquí](https://github.com/livrasand/Reviw/releases), una vez descargado:

Ejecuta Command Palette: <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd>...

Escribe lo siguiente y seguido presiona <kbd>Intro</kbd>:
```html
Preferences: Browse Packages
```

Esto abrirá una ventana del Explorador de archivos en el directorio de los Packages de Sublime Text. Sube a "Sublime Text" o presiona <kbd>Alt</kbd> + <kbd>↑</kbd>.

Ahora ve a la carpeta <b>Installed Packages</b>. Ahora solo arrastra o pega el archivo <b>Reviw.sublime-package</b> en esta carpeta. Con esto, automáticamente se instalará Reviw en Sublime Text.

## Crea tu JWPUB personalizado
Visita <a href="https://github.com/livrasand/Reviw_Channel/">Reviw Channel</a>

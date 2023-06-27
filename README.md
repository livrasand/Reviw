
![Reviw Logo](https://github.com/livrasand/Reviw/assets/104039397/3202a0b1-266c-4815-a4ba-35b470965e7a)


#
Reviw es un lenguaje de marcado de código abierto, escrito en HTML, diseñado para crear documentos, con el objetivo de facilitar el desarrollo de archivos JWPUB. Reviw está basado en [JWLV-API](https://github.com/livrasand/JW-Library-Visualizer-API) que proporciona una interfaz de alto nivel que permite mostrar documentos basados en JWPUB. [JWLV-API](https://github.com/livrasand/JW-Library-Visualizer-API) interpreta el código y lo presenta en pantalla al usuario permitiendo al usuario interactuar con su contenido y navegar idénticamente como lo hace JW Library.

📝 Traducciones disponibles: 🇪🇸

Reviw lo utiliza el editor [Sublime Text](https://github.com/sublimehq) y próximamente muchas otras aplicaciones.

Este proyecto se adhiere a la licencia <b>GoAttendant Zero Public License</b>. Al participar, se espera que respete este código. Informe cualquier comportamiento inaceptable a <b>jwpubcatalog@gmail.com</b>.

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
Si la instalación mediante Package Control no te funciona, prueba la instalación manual:

Ejecuta Command Palette: <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd>...

Escribe lo siguiente y seguido presiona <kbd>Intro</kbd>:
```html
Preferences: Browse Packages
```

Esto abrirá una ventana del Explorador de archivos en el directorio de los Packages de Sublime Text. Sube a "Sublime Text" o presiona <kbd>Alt</kbd> + <kbd>↑</kbd>.

<img src="https://github.com/livrasand/Reviw/assets/104039397/a887ed2b-2e06-4d90-b536-6bbd159a3bc7" width="500px">

Ahora ve a la carpeta <b>Installed Packages</b>. Ahora solo arrastra o pega el archivo <b>Reviw.sublime-package</b> en esta carpeta. Con esto, automáticamente se instalará Reviw en Sublime Text.

## Solicitar un JWTOKEN para JWBlober
Para recibir solicitudes y enviar los JWTOKENS utilizamos [cabal](https://github.com/cabal-club/cabal-cli). Envíanos el `Symbol` de tu JWPUB y el `year`.

```html
cabal --save cabal://53c815d8d410a5fe3ed6cc03f0f318af142202fd868787d83e5efa77d6211554
```

Ingrese esta clave en cabal para unirse al chat.

Cabal es súper joven, y aunque se está tratando de someterlo a prueba a medida que se desarrolla, a veces las cosas se rompen. Si es así, te pedimos seas paciente por favor y esperes que se repare.

Una vez que solicite su JWTOKEN, lo recibirá mediante [Wormhole](https://wormhole.app/).

Los JWPUB proporcionados aquí o creados con Reviw no tiene derechos de autor; estarán en el Dominio Público de [JWPUB Catalog](https://github.com/livrasand/JWPUB-Catalog/). Sin embargo, el código y los métodos de producción no se pueden compartir; Lo mismo ocurre con el material de origen: puede encontrarlo todo en línea. Respecto a los JWTOKENS tampoco se puede compartir como funcionan. Gracias por entender y por no insistir. Puede descargar JWBlober <b>[aquí](https://goattendant.com/JWBlober_Setup.zip)</b>. También puedes descargar la base de datos para realizar pruebas <b>[aquí](https://goattendant.com/DataBaseTest_S.db)</b>.

## Asistencia prioritaria 
La asistencia prioritaria es para solicitar los JWTOKENS para JWBlober. A continuación verás los tiempos de respuesta y precios (USD) mensuales:

<b>Básico:</b> <30 días hábiles · Free<br>
<b>Avanzado:</b> <7 días hábiles · $5<br>
<b>Premier:</b> <24 horas hábiles · $10
```html
bitcoin:bc1qnzzxp0v6dqx0e5eehjsgs5fpdz7r6vzpjhlgeh
```
Ingrese esta Bitcoin URI o Address en su billetera favorita para realizar las donaciones. Las donaciónes solo pueden ser en criptomoneda. No utilizamos PayPal ni ningún otro método de pago. Agradecemos su comprensión y el no solicitar otro método. Nosotros utilizamos [Electrum](https://github.com/spesmilo/electrum) para las transacciones.

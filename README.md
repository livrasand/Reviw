![Reviw Logo](https://github.com/livrasand/Reviw/assets/104039397/3202a0b1-266c-4815-a4ba-35b470965e7a)
> ##### Si consideras útil este proyecto, apóyalo haciendo "★ Star" en el repositorio. ¡Gracias!

#
Reviw es un lenguaje de marcado de código abierto, escrito en HTML, diseñado para crear documentos, con el objetivo de facilitar el desarrollo de archivos JWPUB. Reviw está basado en [JWLV-API](https://github.com/livrasand/JW-Library-Visualizer-API) que proporciona una interfaz de alto nivel que permite mostrar documentos basados en JWPUB. [JWLV-API](https://github.com/livrasand/JW-Library-Visualizer-API) interpreta el código y lo presenta en pantalla al usuario permitiendo al usuario interactuar con su contenido y navegar idénticamente como lo hace JW Library.

📝 Traducciones disponibles: 🇪🇸 (Español) | 🇮🇹 (Italiano)

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
Aprende a crear tu propio JWPUB en nuestra [wiki](https://github.com/bedan1/Reviw/wiki), el documento Reviw [README](https://github.com/bedan1/Reviw#readme) contienen mucha información también, tómese su tiempo y lea atentamente estas instrucciones.

Si tiene algún problema, puede comenzar por [Getting started](https://github.com/bedan1/Reviw/wiki/Getting-started).

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
Si la instalación mediante Package Control no te funciona, prueba la instalación manual, descarga el Package en tu idioma [aquí](https://github.com/bedan1/Reviw/releases), una vez descargado:

Ejecuta Command Palette: <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd>...

Escribe lo siguiente y seguido presiona <kbd>Intro</kbd>:
```html
Preferences: Browse Packages
```

Esto abrirá una ventana del Explorador de archivos en el directorio de los Packages de Sublime Text. Sube a "Sublime Text" o presiona <kbd>Alt</kbd> + <kbd>↑</kbd>.

<img src="https://github.com/livrasand/Reviw/assets/104039397/a887ed2b-2e06-4d90-b536-6bbd159a3bc7" width="500px">

Ahora ve a la carpeta <b>Installed Packages</b>. Ahora solo arrastra o pega el archivo <b>Reviw.sublime-package</b> en esta carpeta. Con esto, automáticamente se instalará Reviw en Sublime Text.

## Solicitar un JWTOKEN para JWBlober
Para recibir solicitudes utilizamos [cabal](https://github.com/cabal-club/cabal-cli). Los archivos JWTOKEN para JWBlober se crean en base a los parámetros y valores de la tabla `Publication` de la base de datos de tu archivo, junto con el **manifest.json**. De manera que antes de que solicites un JWTOKEN para tu proyecto, verifica que los valores como el título y el símbolo de la publicación, el año, el idioma y los demás campos coincidan con el archivo manifest.json. Cambiar aunque sea uno de estos campos ya sea por error o por alguna actualización posterior, requerirá que solicites un nuevo JWTOKEN, o que el JWTOKEN para tu proyecto no funcione.

Envíanos el número de tu idioma, el `Symbol` de la publicación y el `Year`. Debería verse así:
```html
1_th_2018
```
Puedes saber el número de tu idioma [aquí](https://www.jw.org/es/languages).

Los JWTOKENS solo te permiten convertir tus documentos HTML en archivos binarios BLOB que la aplicación JW Library puede entender. El trabajo es manual y dependerá de la dedicación que pongas en elaborar tus propios proyectos.

Además si quieres ver el contenido binario de un JWPUB oficial y convertirlo a HTML legible puedes hacerlo sin problema. De esta manera podrás examinar la estructura de sus documentos y replicarlos en tus archivos.

Los JWTOKENS son funcionales durante 10 días, una vez que haya terminado este periodo JWBlober señalará que ese token ha expirado y deberás renovarlo por otros diez días. Podrás hacerlo tantas veces necesites hasta que termines tu proyecto. Este tipo de archivos son elaborados manualmente por lo que si ya solicitaste uno deberás esperar con paciencia a que lo recibas antes de solicitar uno nuevo. Quizás no haga falta aclararlo pero cualquier documento o JWPUB que hagas con estas herramientas seguirá siendo funcional, aunque su JWTOKENS expire.

Aunque permite la conversión de un archivo binario o BLOB de **publicaciones oficiales de JW.ORG** a un documento HTML, **no es posible para los usuarios en general convertir ese archivo nuevamente a un archivo binario**. De esta manera se evitan modificaciones que pudieran dañar el contenido de una publicación.

Además el poder crear y editar documentos personalizados en JWPUB deja en el aire posibles problemas y vulnerabilidades no contempladas por los programadores de JW Library. Por tal motivo hay una serie de elementos que no están permitidos al procesar un documento HTML con los JWTOKENS.

Entre ellos figuran:
* Scripts
* Ciertas etiquetas HTML
* No se permite ningún enlace a páginas o URL's externas, solo dominios y páginas oficiales de la Organización de los Testigos de Jehová.
* Otros elementos potencialmente dañinos.

En cuanto hagas clic en procesar, JWBlober te avisará si se ha encontrado un elemento no permitido en tu documento y deberás eliminarlo para que puedas continuar.

Si consideras que uno de estos elementos es importante en tu proyecto y no quieres eliminarlo, puedes solicitar una revisión explicando lo que deseas hacer. El cuál estará sujeto a ser aprobado. Cabe decir que esto solo está disponible para proyectos únicos, y los hermanos que lo soliciten requieren ser miembros de la **Asistencia prioritaria Premier**.

```html
cabal --save cabal://53c815d8d410a5fe3ed6cc03f0f318af142202fd868787d83e5efa77d6211554
```

Ingrese esta clave en cabal para unirse al chat.

> ⚠️ Cabal es súper joven, y aunque se está tratando de someterlo a prueba a medida que se desarrolla, a veces las cosas se rompen. Si es así, te pedimos seas paciente por favor y esperes que se repare.

Una vez que solicite su JWTOKEN, lo recibirá mediante [Tribler](https://github.com/Tribler/tribler).

Los JWPUB proporcionados aquí o creados con Reviw no tiene derechos de autor; estarán en el Dominio Público de [JWPUB Catalog](https://github.com/livrasand/JWPUB-Catalog/). Sin embargo, el código y los métodos de producción no se pueden compartir; Lo mismo ocurre con el material de origen: puede encontrarlo todo en línea. Respecto a los JWTOKENS tampoco se puede compartir como funcionan. Gracias por entender y por no insistir. Puede descargar JWBlober <b>[aquí](https://goattendant.com/JWBlober_Setup.zip)</b>. También puedes descargar la base de datos para realizar pruebas <b>[aquí](https://goattendant.com/DataBaseTest_S.db)</b>.

## Asistencia prioritaria 
La asistencia prioritaria es para solicitar los JWTOKENS para JWBlober. A continuación verás los tiempos de respuesta y precios (USD) mensuales:

<b>Básico:</b> <30 días hábiles · Free<br>
<b>Avanzado:</b> <7 días hábiles · $5<br>
<b>Premier:</b> <24 horas hábiles · $10
```html
bitcoin:bc1qnzzxp0v6dqx0e5eehjsgs5fpdz7r6vzpjhlgeh
```
Ingrese esta Bitcoin URI o Address en su billetera favorita para realizar las donaciones. **Solo puede enviar Bitcoin.** Las donaciónes solo pueden ser en criptomoneda. No utilizamos PayPal ni ningún otro método de pago. Agradecemos su comprensión y el no solicitar otro método. Nosotros utilizamos [Electrum](https://github.com/spesmilo/electrum) para las transacciones, usted puede usar cualquiera de su preferencia.

## Licencia 
Copyright (c) 2023 Reviw - Publicado bajo la licencia GoAttendant Zero Public License (GZPL). Reviw y el logotipo de Reviw son marcas comerciales de Rinzler Programmer. Consulte nuestra política de marcas comerciales para obtener información sobre el uso aceptable.

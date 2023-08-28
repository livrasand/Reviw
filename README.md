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

## Solicitar tu JWPUB personalizado
Una de las mayores razones por las que los desarrolladores aman Reviw es por la el ecosistema que se ha desarrollado. Reviw no sólo ayuda al desarrollo de archivos JWPUB's más fácil, si no también tiene el objetivo de indexar todo de los JWPUB Customs disponibles.

Si se ha tomado el tiempo para desarrollar un JWPUB, por favor considere añadirlo a el canal de <a href="https://livrasand.github.io/jwpub-catalog.html">JWPUB Catalog</a> predeterminado para que los usuarios puedan instalar y conservar fácilmente su JWPUB actualizado. 

Siga los siguientes pasos para solicitar un JWTOKEN y enviarlo a JWPUB Catalog:

### 1. Revisión de los paquetes existentes
- **Visite la <a href="https://livrasand.github.io/jwpub-catalog.html">página de búsqueda</a> y busque JWPUB's similares.**
- **Si existe uno similar al suyo, trate de mejorar un JWPUB existente antes de añadir otro.** Cuando sea posible animamos firmemente a trabajar con un JWPUB existente y ser mantenedor para añadir funcionalidades o ajustar un JWPUB en lugar de estar proliferando muchas opciones muy similares. Esto es especialmente cierto si su JWPUB es muy simple.

### 2. Elija un nombre
- **Trate de no usar la palabra `Reviw` en el nombre de su JWPUB.** Cada JWPUB disponible a través de JWPUB Catalog es para JW Library. Usando la palabra Reviw sólo añade ruido a la lista cuando usuarios tratan de encontrar JWPUB´s. Puedes usar la palabra Reviw en su comercialización material, pero omita la lista de archivos, por ejemplo, `Reviw Registro de asistencias`.
- **No uses un nombre demasiado parecido a otro.** No lo hagamos.
- **No usar un `.` en el nombre del JWPUB.**
- **No usar un `/` u otros caracteres restringidos en el Nombre del JWPUB.** Los nombres de los JWPUB se utilizan como parte de un archivo o nombre de la carpeta, dependiendo de la versión de JW Library. Los caracteres inválidos incluyen: `-`, `-`, `:`, `"`, `/`, `-`, `-`, `?` y `*`.

### 3. Aloje su JWPUB
- **Utilice un repositorio público de GitHub.** Sólo incluir un archivo por repositorio y asegúrese de que la raíz del paquete es la raíz del repositorio.

### 4. Elija una estrategia de versiones
Si estás usando GitHub para tu hosting, tendrás que crear una etiqueta cada vez que desee poner una nueva versión a disposición de los usuarios. Los nombres de la etiqueta deben ser un <a href="http://semver.org/">número de versión semántica</a>.

### 5. Prepare su repositorio
Añada su repositorio al canal por defecto

- Haga `Fork` al repositorio <a href="https://github.com/livrasand/Reviw/">Reviw original</a>.
- Clone su fork a su máquina
- Abra la carpeta `Reviw/` con Sublime Text
- Añada la información de su JWPUB en el JSON correspondiente `publications.json`:
```json
    {
        "imageURL": "https://user-images.githubusercontent.com/104039397/224440449-57551d30-c50a-4227-9fcb-1b639b2d4a04.jpg", 
        "downloadURL": "https://github.com/livrasand/livrasand.github.io/raw/main/jwpub-catalog/ritf_S_2022.jwpub", 
        "title": "\"Permanezcan en la fe\" (Hechos 14:22)",
	"language": "1",
	"symbol": "ritf",
	"year": "2023",
	"author": "GoAttendant Team",
	"timestamp": "2023-08-26T15:55:51Z"
    }, 
```

Puedes saber el número de tu idioma [aquí](https://www.jw.org/es/languages).

### 6. Ejecute las pruebas
- Instale el paquete <a href="https://github.com/livrasand/ReviwTools">ReviwTools</a> vía Package Control.
- Ejecute el comando `ReviwTools: Test Default File` desde la Command Palette y asegúrese de que las pruebas pasen.

### 7. Envia un Pull Request
- Navegue a su Fork en <a href="https://github.com/">github.com</a>
- Haga clic en Pull Requests en el navegador de la mano derecha y clic New Pull Request
- Introduzca una descripción en el campo Título
- Haga clic en el botón Create Pull Request

Por favor, tenga paciencia a medida que se revise su solicitud de tracción. Revisamos los cambios a tratar de prevenir JWPUB's duplicados, detectar errores comunes y ayudar a mejorar la experiencia del archivo para los usuarios. Cuando esté aprobado, verás tu JWPUB en <a href="https://livrasand.github.io/jwpub-catalog.html">JWPUB Catalog</a>.

Los JWPUB proporcionados aquí o creados con Reviw **no tiene derechos de autor**; estarán en el Dominio Público de [JWPUB Catalog](https://livrasand.github.io/jwpub-catalog.html). Sin embargo, el código y los métodos de producción no se pueden compartir; Lo mismo ocurre con el material de origen: puede encontrarlo todo en línea. Respecto a los JWTOKENS tampoco se puede compartir como funcionan. Gracias por entender y por no insistir.

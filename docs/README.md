# Introducción a Reviw
Reviw es una potente recopilación de componentes HTML, lleno de características. Construye cualquier documento JWPUB, desde prototipo hasta la producción en minutos.

## Inicio rápido
Empieza incluyendo Reviw en tu producción a través de CDN sin necesidad de ningún paso de construcción. Véalo en la práctica con este [Reviw CodePen demo](https://codepen.io/livrasand/pen/rNPBqOM). 

## Enlaces CDN 
Como referencia, aquí están nuestros enlaces primarios CDN.

| Descripción | URL |
| ------------ | ---------- |
| CSS | [https://cdn.jsdelivr.net/gh/livrasand/livrasand.github.io@main/JW-Library-Visualizer-API/4a57204c696272617279.css](https://cdn.jsdelivr.net/gh/livrasand/livrasand.github.io@main/JW-Library-Visualizer-API/4a57204c696272617279.css) | 
| JS | [https://cdn.jsdelivr.net/gh/livrasand/livrasand.github.io@main/JW-Library-Visualizer-API/4a57204c696272617279.js](https://cdn.jsdelivr.net/gh/livrasand/livrasand.github.io@main/JW-Library-Visualizer-API/4a57204c696272617279.js) |   

# Guía Básica para Programar con Reviw
Una de las mayores razones por las que los desarrolladores aman Reviw es por la el ecosistema que se ha desarrollado. Reviw no sólo ayuda al desarrollo de archivos JWPUB's más fácil, si no también tiene el objetivo de indexar todo de los JWPUB Customs disponibles.

Si se ha tomado el tiempo para desarrollar un JWPUB, por favor considere añadirlo a el canal de <a href="https://livrasand.github.io/jwpub-catalog.html">JWPUB Catalog</a> predeterminado para que los usuarios puedan instalar y conservar fácilmente su JWPUB actualizado. 

Siga los siguientes pasos para solicitar su JWPUB empaquetado y enviarlo a JWPUB Catalog:

### Paso 1: Revisión de los paquetes existentes
- **Instala [Reviw](https://github.com/livrasand/Reviw) para Sublime Text.**.
  
<details>
<summary>¿Cómo instalar Reviw?</summary>
   
Sublime Text es un editor de texto que se usa para escribir código. Reviw es una extensión para Sublime Text que ayuda a crear archivos JWPUB.

Para instalar Reviw, **primero debes descargar e instalar Sublime Text**. **Luego, debes instalar Package Control**, que es una herramienta que te permite instalar extensiones para Sublime Text. **Finalmente, debes instalar Reviw usando Package Control**.

**Instrucciones paso a paso**

Paso 1: Descargar e instalar Sublime Text

- Abre tu navegador web e ingresa a la página web de Sublime Text: https://www.sublimetext.com/
- Haz clic en el botón "Download" para descargar el instalador de Sublime Text.
- Abre el instalador y sigue las instrucciones en pantalla para instalar Sublime Text.

**¿Qué pasa si no tengo un navegador web?**

No te preocupes, **todos los sistemas operativos vienen con un navegador web por defecto**. En Windows, el navegador web por defecto es Microsoft Edge. En macOS, el navegador web por defecto es Safari. En Linux, el navegador web por defecto depende de la distribución que estés usando, pero suele ser Firefox o Chromium.

**Cómo abrir un navegador web por defecto:**
- En Windows, abre el menú Inicio y escribe "Edge". Haz clic en el icono de Edge para abrirlo.
- En macOS, abre el Finder y haz clic en "Aplicaciones". Abre la carpeta "Internet" y haz doble clic en el icono de Safari para abrirlo.
- En Linux, abre la terminal y usa el comando "xdg-open" para abrir el navegador web por defecto. Por ejemplo, para abrir Firefox, escribe:
```shell
xdg-open firefox
```
**Una vez que hayas abierto el navegador web por defecto, podrás usarlo para descargar e instalar Reviw.**

**Paso 2: Instalar Package Control**
Método 1:
- Abre Sublime Text.
- En el menú, ve a "Tools" > "Command Palette".
- En la barra de búsqueda, escribe "Package Control: Install Package".
- Haz clic en el resultado para instalar Package Control.

Método 2:
- Abre Sublime Text.
- En el menú, ve a "Tools" > "Install Package Control…".

Esto descargará la última versión de Package Control y verificará usando criptografía la clave pública. Si se produce un error, utilice el método **manual** en su lugar.

Método manual:
Si los métodos anteriores no es posible debido a un proxy en su red o porque está utilizando una versión antigua de Sublime Text, los siguientes pasos le ayudarán a instalar Package Control:

- Haz clic en el menú, "Preferences" > "Browse Packages…"
- Retroceda una carpeta y luego entre en la carpeta `Installed Packages/`
- Descarge `[Package Control.sublime-package](https://packagecontrol.io/Package%20Control.sublime-package)` y cópielo en el directorio `Installed Packages/`
- Reinicie Sublime Text

¿Qué pasa si no veo la opción "Tools" en el menú?

Si no ves la opción "Tools" en el menú, es posible que tu versión de Sublime Text no esté actualizada. Puedes actualizar Sublime Text desde la página web de Sublime Text.

**Paso 3: Instalar Reviw**

- En el menú, ve a "Tools" > "Command Palette".
- En la barra de búsqueda, escribe "Package Control: Install Package".
- Escribe "Reviw" en el campo de búsqueda y haz clic en el resultado.

**¿Qué pasa si no veo la opción "Package Control: Install Package" en la lista?**

Si no ves la opción "Package Control: Install Package" en la lista, es posible que no hayas instalado Package Control. Para instalar Package Control, sigue las instrucciones del Paso 2.

**¡Listo! Reviw ya está instalado en tu Sublime Text.**

Ahora sigue los siguientes pasos:
</details>

- **Visite la <a href="https://livrasand.github.io/jwpub-catalog.html">página de búsqueda</a> y busque JWPUB's similares.**
- Antes de crear tu propio JWPUB, verifica si ya existe uno similar. Si existe, considera contribuir a mejorar ese paquete en lugar de crear uno nuevo. Esto ayuda a evitar la proliferación de paquetes similares.

### Paso 2: Elije un nombre

- Evita usar "Reviw" en el nombre de tu paquete.
- No uses un nombre demasiado similar a otro.
- Evita el uso de puntos (.) en el nombre del paquete.
- No uses caracteres especiales como "/", ":", "?", "*", etc.

### Paso 3: Aloja tu JWPUB en GitHub

En este punto del proceso, ya debes haber completado los archivos HTML que formarán parte de tu JWPUB y haber generado tu JWPUB utilizando la herramienta Reviw. Ahora, nos estamos preparando para agregar estos archivos al repositorio en GitHub, lo que permitirá que otros usuarios accedan y descarguen tu trabajo. **En este punto, ya puedes solicitar los BLOBs para tus HTMLs.** Pero antes de solicitar los BLOBs, sigue estos pasos:

<details>
<summary>¿Cómo solicito los BLOBs para mis HTMLs?</summary>
   
Para solicitar los BLOBs para tus HTMLs, sigue estos pasos detallados:

**1. Accede a GitHub y encuentra el repositorio de Reviw:**
Inicia sesión en tu cuenta de GitHub o regístrate si aún no tienes una. Luego, busca el repositorio de Reviw al que deseas enviar tu solicitud.

**2. Crea una nueva Issue:**
En el repositorio de Reviw, navega a la sección de "Issues" y haz clic en el botón "New Issue" para crear una nueva solicitud.

**3. Selecciona la plantilla "Solicitud de un JWPUB":**
Al crear la Issue, verás una opción para seleccionar una plantilla. Elige la plantilla de "Solicitud de un JWPUB" si está disponible. Esta plantilla debería estar diseñada para solicitar BLOBs para tus HTMLs.

**4. Completa la solicitud:**
Rellena los campos requeridos en la plantilla de solicitud. Aquí es donde debes proporcionar detalles sobre tus HTMLs y cualquier información adicional relevante. Asegúrate de ser claro y preciso en tu descripción para que el equipo de Reviw pueda entender tus necesidades.

**5. Carga tus HTMLs:**
Dentro de la Issue que estás creando, debería haber un lugar donde puedas cargar tus archivos HTML. Sube los archivos HTML que necesitas para que el equipo de Reviw pueda trabajar con ellos. **Los HTMLs debes empaquetarlos en un archivo ZIP para que puedas cargarlos.**

**6. Explica tus necesidades específicas:**
Añade cualquier información adicional o requisitos específicos que tengas para tus BLOBs. Cuanta más información proporciones, mejor será la respuesta que recibas.

**7. Envía la solicitud:**
Una vez que hayas completado todos los campos y cargado tus HTMLs, verifica que toda la información sea correcta y haz clic en el botón "Submit Issue" o su equivalente en la interfaz de GitHub para enviar la solicitud.

**8. Espera la respuesta:**
El equipo de Reviw revisará tu solicitud y proporcionará una respuesta con los BLOBs cargados, o cualquier información adicional que puedan necesitar de tu parte. Asegúrate de estar atento a las notificaciones en GitHub para recibir actualizaciones sobre tu solicitud.

**Siguiendo estos pasos, podrás solicitar BLOBs para tus HTMLs de manera organizada y efectiva a través del repositorio de Reviw en GitHub.**
</details>

1. **Crea una cuenta de GitHub**: Si aún no tienes una cuenta, ve a [GitHub](https://github.com) y regístrate.

2. **Crea un repositorio de GitHub**:
   - Haz clic en el botón "New" en la página principal de GitHub.
   - Dale un nombre a tu repositorio, usa exactamente el mismo que tu proyecto hecho con Reviw.
   - Marca la opción "Public" para que sea visible para todos.
   - No selecciones "Initialize this repository with a README" por ahora.

3. **Carga tus HTML al repositorio en GitHub**

Una vez que hayas creado tu repositorio en GitHub, es hora de cargar los archivos de tu paquete. Esto se hace a través de la interfaz web de GitHub, lo que significa que no necesitas usar la línea de comandos o herramientas adicionales para este paso. Sigue estos pasos:

1. **Inicia sesión en GitHub**: Abre tu navegador web y visita [GitHub](https://github.com). Asegúrate de haber iniciado sesión con la cuenta que utilizaste para crear el repositorio.

2. **Accede a tu repositorio**: En la página principal de GitHub, verás una lista de tus repositorios. Haz clic en el nombre del repositorio que creaste para tu proyecto.

3. **Navega a la pestaña "Code"**: Una vez que estés dentro de tu repositorio, verás varias pestañas justo debajo del nombre del repositorio. Haz clic en la pestaña que dice "Code". Esto te llevará a la página que te permite cargar archivos.

4. **Arrastra y suelta archivos o elige archivos manualmente**:
   - Puedes arrastrar y soltar los archivos de tu paquete directamente desde tu computadora a la ventana de GitHub (recomiendo este).
   - También puedes hacer clic en el botón "Add file" y seleccionar "Upload files" para abrir un explorador de archivos y elegir los archivos de tu paquete uno por uno.

5. **Confirma los cambios**:
   - Después de cargar los archivos, verás una sección donde puedes agregar un comentario para describir los cambios que estás realizando. Esto es útil para mantener un registro de las actualizaciones que haces en tu repositorio. Asegúrate de proporcionar una breve descripción de los archivos que estás cargando.

6. **Realiza la carga**:
   - Una vez que hayas añadido los archivos y proporcionado un comentario, haz clic en el botón "Commit changes" o "Commit" para confirmar la carga de los archivos.

7. **Espera a que los archivos se carguen**:
   - GitHub procesará la carga de tus archivos. Esto puede tomar un momento, especialmente si estás cargando varios archivos o archivos grandes.

8. **Verifica los archivos cargados**:
   - Después de que la carga se complete, podrás ver los archivos que has subido en la lista de archivos en tu repositorio. Esto confirma que tus archivos se han cargado correctamente en tu repositorio de GitHub.

¡Eso es todo! Has cargado con éxito los archivos de tu paquete a tu repositorio en GitHub. Ahora, estos archivos estarán disponibles en tu repositorio para que otros usuarios los descarguen y utilicen.

### Paso 4: Elige una estrategia de versiones

- Crea una etiqueta cada vez que desees lanzar una nueva versión de tu paquete. Las etiquetas deben seguir el formato de "número de versión semántica", por ejemplo, "v1.0.0".

### Paso 5: Prepara tu repositorio

1. **Agrega tu repositorio al canal por defecto**:
   - Haz un "Fork" del repositorio **"Reviw"** desde [Reviw Repository](https://github.com/livrasand/Reviw) haciendo clic en el botón "Fork" en la esquina superior derecha de la página.

2. **Clona tu repositorio a tu máquina**:
   - Abre la consola de comandos de tu sistema operativo. Dependiendo de tu sistema, puedes usar la consola de comandos de Windows, la terminal de macOS o la terminal de Linux.
   - Ejecuta el siguiente comando (sustituye `<tu_nombre_de_usuario>` por tu nombre de usuario de GitHub):

      ```bash
     git clone https://github.com/<tu_nombre_de_usuario>/Reviw
     ```

<details>
<summary>Si no tienes Git, sigue estos pasos para instalarlo:</summary>

**Instalación de Git en Windows:**

1. **Descarga Git para Windows:**

   - Ve al sitio web oficial de Git para Windows en [https://gitforwindows.org/](https://gitforwindows.org/).
   - Haz clic en el botón "Download" para iniciar la descarga del instalador.

2. **Ejecuta el instalador:**

   - Una vez que se complete la descarga, haz doble clic en el archivo descargado (por lo general, tiene un nombre como "Git-2.X.X-64-bit.exe", donde "X.X" es la versión actual).
   - Windows te pedirá permiso para ejecutar el instalador. Haz clic en "Sí" o "Ejecutar" para continuar.

3. **Configura el instalador:**

   - Selecciona el idioma de instalación que prefieras y haz clic en "OK".
   - Acepta las condiciones de licencia y continúa.
   - Elige la ubicación de instalación. Por lo general, la configuración predeterminada es suficiente.
   - Selecciona los componentes a instalar. A menos que tengas una razón específica, deja las opciones predeterminadas seleccionadas.
   - Elige el editor de texto que deseas utilizar con Git (por ejemplo, Notepad++) y continúa.
   - Configura la variable de entorno "PATH" seleccionando "Git from the command line and also from 3rd-party software" y haz clic en "Next".
   - Elige la opción de línea de comandos predeterminada (Git Bash) y haz clic en "Next".
   - Elige la opción predeterminada para la conversión de caracteres (CRLF) y haz clic en "Next".
   - Elige la opción predeterminada para la emulación de terminal (MinTTY) y haz clic en "Next".
   - Elige la opción predeterminada para habilitar el soporte experimental de Git Credential Manager y haz clic en "Install".

4. **Completa la instalación:**

   - Espera a que se complete la instalación. Una vez finalizada, haz clic en "Finish".

5. **Verifica la instalación:**

   - Abre la consola de comandos de Windows (CMD) o Git Bash si lo instalaste.
   - Ejecuta el siguiente comando para verificar si Git se ha instalado correctamente:
     ```
     git --version
     ```
   - Deberías ver la versión de Git que has instalado. Esto confirma que Git se instaló correctamente en tu sistema Windows.

---

**Instalación de Git en macOS:**

1. **Instalación a través de Terminal:**

   - macOS generalmente viene con Git preinstalado. Puedes verificar si Git ya está instalado ejecutando el siguiente comando en la Terminal:
     ```
     git --version
     ```

   - Si Git no está instalado o si deseas una versión más reciente, macOS te ofrecerá instalar la herramienta de línea de comandos Xcode Command Line Tools, que incluye Git. Confirma la instalación cuando se te solicite.

   - Después de la instalación, verifica la versión de Git nuevamente para asegurarte de que esté funcionando.

---

**Instalación de Git en Linux (Ubuntu/Debian):**

1. **Abre la Terminal:**

   - Abre la Terminal desde la aplicación de búsqueda o desde el menú de aplicaciones, según tu distribución de Linux.

2. **Actualiza la lista de paquetes:**

   - Antes de instalar Git, asegúrate de que la lista de paquetes esté actualizada ejecutando el siguiente comando:
     ```
     sudo apt update
     ```

3. **Instala Git:**

   - Usa el siguiente comando para instalar Git:
     ```
     sudo apt install git
     ```

   - Confirma la instalación cuando se te solicite.

4. **Verifica la instalación:**

   - Después de la instalación, verifica la versión de Git ejecutando el siguiente comando:
     ```
     git --version
     ```

   - Deberías ver la versión de Git que has instalado. Esto confirma que Git se ha instalado correctamente en tu sistema Linux.

---

¡Ahora tienes Git instalado en tu sistema operativo!
</details>

3. **Abre la carpeta de tu repositorio en Sublime Text**:
   - Abre Sublime Text y selecciona "File" > "Open Folder". Luego, selecciona la carpeta de tu repositorio.

4. **Agrega información de tu paquete al archivo JSON**:
   - Abre el archivo **"publications.json"** dentro de la carpeta `repository` en Sublime Text, que está en la carpeta de tu repositorio.
   - Agrega la información de tu paquete al archivo JSON siguiendo el formato proporcionado en el ejemplo. Asegúrate de incluir la URL del repositorio.

```json
{
   "imageURL":"https://user-images.githubusercontent.com/104039397/224440449-57551d30-c50a-4227-9fcb-1b639b2d4a04.jpg",
   "downloadURL":"",
   "repositoryURL":"https://github.com/livrasand/Bosquejos-de-discursos",
   "title":"Bosquejos de discursos",
   "language":"1",
   "symbol":"ritf",
   "year":"2023"
}, 
```

**La URL de descarga se añadirá automáticamente más adelante.**

### Paso 6: Ejecuta las pruebas

1. **Instala el paquete "ReviwTools" en Sublime Text**:
   - Abre Sublime Text.
   - Ve a "Tools" > "Command Palette".
   - Escribe "Package Control: Install Package" y presiona Enter.
   - Busca "ReviwTools" y selecciónalo para instalarlo.

2. **Ejecuta las pruebas**:
   - Ve a "Tools" > "Command Palette" nuevamente.
   - Escribe `ReviwTools: Test Default File` y presiona Enter.
   - Asegúrate de que las pruebas pasen sin errores.
  
3. **Sincroniza los cambios con tu repositorio:**

   - Una vez que hayas ejecutado las pruebas y estés seguro de que tu paquete funciona correctamente, es importante sincronizar los cambios con tu repositorio en GitHub para que otros puedan acceder a la última versión de tu JWPUB.

   - Abre la consola de comandos de tu sistema operativo (Command Prompt en Windows, Terminal en macOS/Linux).

   - Navega al directorio donde se encuentra tu repositorio **Reviw** local (usando el comando `cd` en Windows o `cd` en macOS/Linux).

   - Ejecuta los siguientes comandos para sincronizar tus cambios con el repositorio remoto en GitHub:

     ```shell
     git add --all
     git commit -m "Añadiendo nombre-de-tu-jwpub"
     git push -u origin main
     ```

   - El primer comando agrega todos los cambios realizados en tu repositorio local al área de preparación.
   - El segundo comando realiza un commit con un mensaje descriptivo.
   - El tercer comando envía los cambios al repositorio remoto en la rama "master".

   - Ingresa tus credenciales de GitHub si se te solicita.

   - Una vez completados estos pasos, los cambios se habrán sincronizado con tu repositorio en GitHub y estarán disponibles para otros usuarios.

¡Ahora has ejecutado las pruebas y sincronizado con éxito los cambios en tu repositorio!

### Paso 7: Enviar un Pull Request

1. **Navega a tu Fork en GitHub**:
   - Visita la página de tu repositorio en GitHub.

2. **Crea un Pull Request**:
   - Haz clic en la pestaña "Pull Requests" en la parte superior.
   - Luego, haz clic en "New Pull Request".

3. **Agrega una descripción**:
   - En el campo "Título", escribe una breve descripción de los cambios que estás proponiendo.

4. **Crea el Pull Request**:
   - Haz clic en el botón "Create Pull Request" para enviar tus cambios para su revisión.

¡Eso es todo! Has creado y contribuido con éxito a un JWPUB para JW Library utilizando GitHub, Git, Sublime Text y Reviw. Tu paquete estará disponible para otros usuarios una vez que se apruebe el Pull Request. 

Por favor, tenga paciencia a medida que se revise su solicitud de tracción. Revisamos los cambios a tratar de prevenir JWPUB's duplicados, detectar errores comunes y ayudar a mejorar la experiencia del archivo para los usuarios. Cuando esté aprobado, verás tu JWPUB en <a href="https://livrasand.github.io/jwpub-catalog.html">JWPUB Catalog</a>.

Los JWPUB proporcionados aquí o creados con Reviw **no tiene derechos de autor**; estarán en el Dominio Público de [JWPUB Catalog](https://livrasand.github.io/jwpub-catalog.html).

¡Gracias por ser parte de la comunidad de Reviw!

import sublime
import sublime_plugin
import os
import subprocess
import datetime
import json
import sqlite3
from collections import OrderedDict

# Clase para mostrar mensajes en una vista personalizada
class MessageView:
    def __init__(self):
        self.view = None

    def show_message(self, message):
        if not self.view:
            self.view = sublime.active_window().new_file()
            self.view.set_scratch(True)
            self.view.set_name("Mensaje")
        else:
            self.view.run_command("select_all")
            self.view.run_command("right_delete")

        self.view.run_command("append", {"characters": message})
        sublime.active_window().focus_view(self.view)

# Crear una instancia de MessageView
message_view = MessageView()

# Declarar global_project_name como una variable global
global global_project_name

class CreateProjectCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        # Obtiene la carpeta "Documents" en la ubicación de usuario como ubicación por defecto
        default_folder = os.path.expanduser("~/Documents")

        # Obtiene la carpeta "Reviw" dentro de "Documents"
        reviw_folder = os.path.join(default_folder, "Reviw Projects")

        # Crea la carpeta "Reviw Projects" si no existe
        if not os.path.exists(reviw_folder):
            os.makedirs(reviw_folder)

        # Valida el nombre de la carpeta "proyecto" ingresado por el usuario
        def validate_project_name(name):
            # Verifica si el nombre tiene más de 10 caracteres
            if len(name) > 10:
                message_view.show_message("El nombre '{}' excede los 10 caracteres permitidos.".format(name))
                return

            # Verifica si el nombre contiene solo caracteres alfanuméricos y guiones bajos
            if not name.replace("_", "").isalnum():
                message_view.show_message("El nombre debe contener solo caracteres alfanuméricos y guiones bajos.")
                return

            # Verifica si el nombre no existe en el archivo "official_publications.json"
            if self.name_exists_in_official_publications(name):
                message_view.show_message("El nombre '{}' ya existe en el archivo official_publications.json.".format(name))
                return

            # Si pasa todas las validaciones, llama a "on_done"
            self.on_done(name, reviw_folder)

        # Pregunta al usuario el nombre de la carpeta "proyecto"
        sublime.active_window().show_input_panel("Nombre de la carpeta 'proyecto' (máx. 10 caracteres, solo letras, números y guiones bajos):", "proyecto", validate_project_name, None, None)

    def on_done(self, project_name, base_folder):        
        global global_project_name  # Definir la variable global
        global_project_name = project_name  # Asignar el valor

        if not project_name:
            project_name = "proyecto"

        # Obtener el año actual
        current_year = datetime.datetime.now().year

        # Crea la carpeta "proyecto" en la ubicación por defecto
        project_path = os.path.join(base_folder, project_name)
        os.makedirs(project_path)

        # Crea la carpeta "contents" dentro de la carpeta "proyecto"
        contents_path = os.path.join(project_path, "contents~")
        os.makedirs(contents_path)

        # Crea el archivo "manifest.json" en la carpeta "proyecto"
        manifest_path = os.path.join(project_path, "manifest.json")
        
        manifest_template = OrderedDict([
            ("name", project_name + ".jwpub"),
            ("hash", ""),
            ("timestamp", self.get_current_timestamp()),
            ("version", 1),
            ("expandedSize", None),
            ("contentFormat", "z-a"),
            ("htmlValidated", False),
            ("mepsPlatformVersion", None),
            ("mepsBuildNumber", None),
            ("publication", OrderedDict([
                ("fileName", project_name + ".db"),
                ("type", 1),
                ("title", ""),
                ("shortTitle", ""),
                ("displayTitle", ""),
                ("referenceTitle", ""),
                ("undatedReferenceTitle", ""),
                ("titleRich", ""),
                ("displayTitleRich", ""),
                ("referenceTitleRich", ""),
                ("undatedReferenceTitleRich", ""),
                ("symbol", project_name),
                ("uniqueEnglishSymbol", project_name),
                ("uniqueSymbol", project_name),
                ("undatedSymbol", project_name),
                ("englishSymbol", project_name),
                ("language", None),
                ("hash", ""),
                ("timestamp", self.get_current_timestamp()),
                ("minPlatformVersion", 1),
                ("schemaVersion", 8),
                ("year", current_year),
                ("issueId", 0),
                ("issueNumber", 0),
                ("variation", ""),
                ("publicationType", ""),
                ("rootSymbol", project_name),
                ("rootYear", current_year),
                ("rootLanguage", 0),
                ("images", [
                    OrderedDict([
                        ("signature", ""),
                        ("fileName", ""),
                        ("type", "t"),
                        ("attribute", "r"),
                        ("width", None),
                        ("height", None)
                    ])
                ]),
                ("categories", [""]),
                ("attributes", []),
                ("issueAttributes", []),
                ("issueProperties", OrderedDict([
                    ("title", ""),
                    ("undatedTitle", ""),
                    ("coverTitle", ""),
                    ("titleRich", ""),
                    ("undatedTitleRich", ""),
                    ("coverTitleRich", ""),
                    ("symbol", project_name),
                    ("undatedSymbol", project_name)
                ]))
            ]))
        ])

        with open(manifest_path, "w") as manifest_file:
            json.dump(manifest_template, manifest_file, indent=4)

        # Crear la base de datos SQLite con el nombre del proyecto dentro de "contents~"
        db_path = os.path.join(contents_path, project_name + ".db")
        self.create_database(db_path)

        # Abre la carpeta en Sublime Text
        subprocess.Popen(["subl", project_path])

        # Muestra el resultado en la vista personalizada
        message_view.show_message("Proyecto creado correctamente en: {}".format(project_path))

        # Llamar a la función para crear la base de datos (dentro de la clase)
        if global_project_name:
            nombre_db = global_project_name + ".db"
            self.create_database(nombre_db)  # Llamar como un método de la clase

    def create_database(self, nombre_db):
        try:
            # Conectarse a la base de datos (o crearla si no existe)
            conn = sqlite3.connect(nombre_db)
            cursor = conn.cursor()

            # Obtener la ruta absoluta del directorio del script actual
            script_directory = os.path.dirname(os.path.abspath(__file__))

            # Construir la ruta completa al archivo "create_database.sql"
            sql_file_path = os.path.join(script_directory, "create_database.sql")

            # Leer el contenido del archivo "create_database.sql"
            with open(sql_file_path, "r") as sql_file:
                sql_script = sql_file.read()

            # Ejecutar las consultas SQL desde el archivo
            cursor.executescript(sql_script)

            # Confirmar los cambios y cerrar la conexión
            conn.commit()
            conn.close()

            print("Base de datos '{}' creada exitosamente.".format(nombre_db))
        except sqlite3.Error as e:
            print("Error al crear la base de datos: {}".format(e))


    def get_current_timestamp(self):
        return datetime.datetime.utcnow().strftime('%Y-%m-%dT%H:%M:%SZ')

    def name_exists_in_official_publications(self, name):
        try:
            with open("official_publications.json", "r") as json_file:
                data = json.load(json_file)
                for entry in data:
                    if "Symbol" in entry and str(entry["Symbol"]) == name:
                        return True
        except FileNotFoundError:
            pass  # Manejo de errores si el archivo no existe
        except ValueError:
            pass  # Manejo de errores si el archivo no es válido JSON

        return False

import sublime
import sublime_plugin
import zipfile
import os

class CreateZipPackageCommand(sublime_plugin.WindowCommand):
    def run(self):
        file_path = __file__  # Ruta del archivo actual (debe ser un archivo de complemento de Sublime Text)
        folder_name = os.path.basename(os.path.dirname(file_path))
        current_folder = self.window.folders()[0]
        zip_filename = os.path.join(current_folder, folder_name + ".jwpub")

        try:
            with zipfile.ZipFile(zip_filename, "w") as zipf:
                for root, _, files in os.walk(current_folder):
                    for file in files:
                        file_path = os.path.join(root, file)
                        zipf.write(file_path, os.path.relpath(file_path, current_folder))
        except Exception as e:
            sublime.error_message("Error creating JWPUB package: {}".format(e))
            return

        sublime.message_dialog("Package JWPUB created successfully: {}".format(zip_filename))
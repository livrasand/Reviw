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
            # Comprimir "contents~" en "contents.zip"
            contents_folder = os.path.join(current_folder, "contents~")
            contents_zip_filename = os.path.join(current_folder, "contents.zip")
            with zipfile.ZipFile(contents_zip_filename, "w") as contents_zipf:
                for root, dirs, files in os.walk(contents_folder):
                    for file in files:
                        file_path = os.path.join(root, file)
                        contents_zipf.write(file_path, os.path.relpath(file_path, contents_folder))
                    for dir in dirs:
                        dir_path = os.path.join(root, dir)
                        contents_zipf.write(dir_path, os.path.relpath(dir_path, contents_folder))

            # Renombrar "contents.zip" a "contents"
            os.rename(contents_zip_filename, os.path.join(current_folder, "contents"))

            # Comprimir "contents" y "manifest.json" en ".jwpub"
            with zipfile.ZipFile(zip_filename, "w") as zipf:
                for item in ["contents", "manifest.json"]:
                    item_path = os.path.join(current_folder, item)
                    zipf.write(item_path, os.path.relpath(item_path, current_folder))

        except Exception as e:
            sublime.error_message("Error creating JWPUB package: {}".format(e))
            return

        sublime.message_dialog("Package JWPUB created successfully: {}".format(zip_filename))

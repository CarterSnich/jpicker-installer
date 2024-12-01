# jcpicker-installer

This repository provides an easy-to-use installer for **Just Color Picker**, a popular color-picking application. The installer allows users to:

- Automatically create a desktop shortcut.
- Manage the application's files in a specified installation directory.
- Easily uninstall the application when needed.

## Prerequisites

To build the installer, you'll need:

- [Git Bash](https://git-scm.com/) (for running shell scripts).
- [WiX Toolset 5.0.2](https://wixtoolset.org/releases/) (to generate the installer).
- [`7z.exe`](https://www.7-zip.org/) (for extracting resources from the binary).
- [`icomake.exe`](https://github.com/tringi/icomake) (to generate icon files).

Ensure these tools are available in your PATH for the build script to work correctly. `7z.exe` and `icomake.exe` are already provided inside `tools` folder.

## Building the Installer

1. Clone this repository and modify `installer.wxs` to your preference.
2. Ensure all shell scripts are executable using `chmod +x`:
   ```bash
   chmod +x *.sh
   ```
3. Run build.sh using Git Bash:

   ```bash
   ./build.sh
   ```

   This script performs the following tasks:

   - Downloads the latest binary release of Just Color Picker from the official website.
   - Extracts the executable's icon using 7z.exe and converts it to an icon format with `icomake.exe`.
   - Builds the installer using the WiX Toolset.

The application will be installed in `%APPDATA%\jcpicker` by default.

## Disclaimer

This repository is not affiliated with or endorsed by the developers of Just Color Picker. Users are responsible for ensuring compliance with the application's licensing terms. This repository provides scripts and configurations for generating an installer for convenience only.

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

# jcpicker-installer

This repository contains the source files for creating an installer for the [Just Color Picker](https://annystudio.com/software/colorpicker/) application using the [WiX Toolset](https://wixtoolset.org/).

I created this to have an easy way to create shortcuts and location to place the `jcpicker.exe` executable.

## Prerequisites

To build the installer, you'll need:

- Git Bash
- [WiX Toolset 5.0.2](https://wixtoolset.org/releases/)
- [icomake.exe](https://github.com/tringi/icomake)

## Building the Installer

1. Make sure all the shell scripts are executable. Use `chmod +x`.
2. Download `jcpicker.exe` using `download.sh`.
3. Open the executable using 7zip (or other archiving software) and extract `.rsrc/0/ICON` to the root of the repository.
4. Run `build.sh` to generate icon file and build the installer.

The installation path is `%APPDATA%\jcpicker`.

## Disclaimer

**JCPicker** is an application developed by its original creators. This repository is not affiliated with the development of the application itself. Instead, it provides the necessary files and scripts to generate an installer for JCPicker.

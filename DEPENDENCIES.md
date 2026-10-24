# Dependencies

Dependencies for the Hyprland + QuickShell configuration in this repository. Core packages are needed for the desktop session; feature packages are only needed when using the related features. Package names target CachyOS/Arch Linux.

## Core

- `hyprland` — compositor, IPC, and keybindings.
- `quickshell` — QML shell and panels (`qs`).
- `bash`, `coreutils`, `systemd`, `xdg-utils` — scripts, sessions, and desktop integration.
- `pipewire`, `wireplumber` — audio.
- `networkmanager`, `bluez`, `bluez-utils` — networking and Bluetooth.
- `wl-clipboard`, `cliphist` — Wayland clipboard and clipboard history.
- `curl`, `jq`, `python`, `file`, `libnotify` — utilities invoked by the configuration.
- `kitty`, `fuzzel` — terminal and launcher.

## Optional features

- Screenshots, recording, and annotation: `grim`, `slurp`, `swappy` (or `satty`), `wf-recorder`, `ffmpeg`.
- Theming, wallpaper, and image processing: `matugen`, `imagemagick`.
- Media and visualization: `playerctl`, `cava`, `songrec`.
- Device controls: `brightnessctl`, `hyprpicker`, `hyprsunset`, `ydotool`.
- Keyring: `libsecret` (provides `secret-tool`).
- OCR: `tesseract` and the relevant language data.
- Extra features invoked by keybindings or configuration: `wlogout`, `hyprshot`, `trans` (translate-shell), `bc`, `fprintd`, a terminal emulator, audio mixer, file manager, graphical network/Bluetooth manager, and EasyEffects.
- Some Python scripts may require additional modules; use the interpreter or virtual environment specified by each script.

## Availability on the backup machine

Available when checked: `quickshell`, `hyprland`, `bash`, `coreutils`, `systemd`, `wl-clipboard`, `cliphist`, `grim`, `slurp`, `swappy`, `wf-recorder`, `ffmpeg`, `pipewire`, `wireplumber`, `playerctl`, `cava`, `matugen`, `imagemagick`, `hyprsunset`, `curl`, `jq`, `python`, `libnotify`, `file`, `fuzzel`, `hyprpicker`, `songrec`, `libsecret`, `brightnessctl`, `networkmanager`, `bluez`, `bluez-utils`, `xdg-utils`, `ydotool`.

Not found when checked: `satty`, `tesseract`, `wlogout`, `hyprshot`, and `trans`. `swappy` is available as an annotation alternative. This reflects PATH/package availability only when this list was created.

API keys, keyring data, and credentials are not stored in this repository. Online features that require them must be configured locally.

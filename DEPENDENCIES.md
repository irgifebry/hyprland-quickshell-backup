# Dependensi

Daftar untuk konfigurasi Hyprland + QuickShell dalam repo ini. `Inti` dibutuhkan untuk sesi desktop; paket fitur diperlukan hanya jika fitur terkait digunakan. Nama paket mengikuti CachyOS/Arch Linux.

## Inti

- `hyprland` — compositor, IPC dan keybind.
- `quickshell` — panel/shell QML (`qs`).
- `bash`, `coreutils`, `systemd`, `xdg-utils` — skrip, sesi, dan integrasi desktop.
- `pipewire`, `wireplumber` — audio.
- `networkmanager`, `bluez`, `bluez-utils` — jaringan dan Bluetooth.
- `wl-clipboard`, `cliphist` — clipboard Wayland dan riwayat clipboard.
- `curl`, `jq`, `python`, `file`, `libnotify` — utilitas yang dipanggil konfigurasi.
- `kitty`, `fuzzel` — terminal dan launcher.

## Fitur tambahan

- Screenshot/rekam/anotasi: `grim`, `slurp`, `swappy` (atau `satty`), `wf-recorder`, `ffmpeg`.
- Tema/wallpaper/gambar: `matugen`, `imagemagick`.
- Media/visualisasi: `playerctl`, `cava`, `songrec`.
- Kontrol perangkat: `brightnessctl`, `hyprpicker`, `hyprsunset`, `ydotool`.
- Keyring: `libsecret` (menyediakan `secret-tool`).
- OCR: `tesseract` dan paket bahasa yang sesuai.
- Fitur ekstra/opsional yang dipanggil dari keybind atau konfigurasi: `wlogout`, `hyprshot`, `trans` (translate-shell), `bc`, `fprintd`, aplikasi terminal, mixer, file manager, pengelola jaringan/Bluetooth grafis, dan EasyEffects.
- Python scripts tertentu mungkin memerlukan modul Python tambahan; gunakan interpreter/venv yang disebut skrip terkait.

## Status pada mesin saat backup

Tersedia: `quickshell`, `hyprland`, `bash`, `coreutils`, `systemd`, `wl-clipboard`, `cliphist`, `grim`, `slurp`, `swappy`, `wf-recorder`, `ffmpeg`, `pipewire`, `wireplumber`, `playerctl`, `cava`, `matugen`, `imagemagick`, `hyprsunset`, `curl`, `jq`, `python`, `libnotify`, `file`, `fuzzel`, `hyprpicker`, `songrec`, `libsecret`, `brightnessctl`, `networkmanager`, `bluez`, `bluez-utils`, `xdg-utils`, `ydotool`.

Tidak ditemukan: `satty`, `tesseract`, `wlogout`, `hyprshot`, dan `trans`. `swappy` tersedia sebagai alternatif anotasi. Status ini hanya mencerminkan PATH/paket ketika daftar dibuat.

API key, keyring, serta kredensial tidak disimpan di repo; fitur daring yang memerlukannya perlu dikonfigurasi lokal.

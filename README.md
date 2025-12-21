# Configuración de Hyprland – README
Este documento describe el software necesario para que esta configuración de Hyprland funcione correctamente, junto con los comandos de instalación y la estructura de archivos recomendada. Está orientado a distribuciones basadas en Arch Linux.

## 1. Software indispensable

### 1.1 Hyprland
Instalación:
```
sudo pacman -S hyprland
```
## 2. Utilidades Necesarias

### 2.1 Waybar
```
sudo pacman -S waybar
```
### 2.2 Hyprpaper
```
sudo pacman -S hyprpaper
```
### 2.3 Fastfetch
```
sudo pacman -S fastfetch
```
### 2.4 Python
```
sudo pacman -S python
```
## 3. Aplicaciones Configuradas por Defecto
### 3.1 Kitty
```
sudo pacman -S kitty
```
### 3.2 Nautilus
```
sudo pacman -S nautilus
```
### 3.1 Rofi
```
sudo pacman -S rofi
```
El tema debe ubicarse en:
```
~/.local/share/rofi/themes/rounded-blue-dark.rasi
```

## 4. Temas e iconos
```
sudo pacman -S orchis-theme papirus-icon-theme xcursor-themes
```
## 5. Audio (PipeWire)
```
sudo pacman -S pipewire wireplumber pipewire-pulse
```
## 6. Capturas de Pantalla
```
sudo pacman -S grim slurp
yay -S grimblast-git
```
## 7. Bloqueo de Pantalla
```
sudo pacman -S swaylock
```
## 8. Control de Brillo
```
sudo pacman -S brightnessctl
```
## 9. Menú de Apagado
```
sudo pacman -S wlogout
```
## 10. Gestos
```
yay -S hyprland-gestures
```
## 11. Estructura de Archivos Requerida
- Crear carpeta de archivos:
    ```
    mkdir -p ~/.config/custom_scripts
    ```
- dar permisos:
    ```
    chmod +x ~/.config/custom_scripts/keyboard_wheel_control.py
    ```
- Carpeta de Wallpapers:
    ```
    mkdir -p ~/Pictures/Wallpapers
    ```
- Archivos Requeridos:
    ```
    ~/.config/hypr/hyprland.conf
    ~/.config/hypr/mocha.conf
    ~/.config/custom_scripts/keyboard_wheel_control.py
    ```
## 12. Instalacion Completa Recomendada
Instalacion principal
```
sudo pacman -S hyprland waybar hyprpaper kitty nautilus rofi \
    grim slurp swaylock wlogout brightnessctl fastfetch \
    pipewire wireplumber pipewire-pulse python \
    orchis-theme papirus-icon-theme xcursor-themes
```
Paqueteria AUR:
```
yay -S grimblast-git hyprland-gestures
```

## 13. Notas Finales
Esta configuración está diseñada para un entorno Wayland moderno, con animaciones fluidas, atajos intuitivos y una estética oscura coherente. Asegúrate de instalar todos los paquetes listados para evitar errores al iniciar Hyprland.
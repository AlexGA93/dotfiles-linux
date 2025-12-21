#!/bin/bash

echo "=========================================="
echo "  Instalador automático para Hyprland"
echo "  Sistema objetivo: Arch Linux / EndeavourOS / Manjaro"
echo "=========================================="
echo

# Comprobar si se ejecuta como root
if [[ $EUID -eq 0 ]]; then
    echo "No ejecutes este script como root. Usa sudo cuando sea necesario."
    exit 1
fi

# Comprobar si yay está instalado
if ! command -v yay &> /dev/null; then
    echo "yay no está instalado. Instalándolo..."
    sudo pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay.git
    cd yay || exit
    makepkg -si
    cd ..
fi

echo
echo "Actualizando el sistema..."
sudo pacman -Syu --noconfirm

echo
echo "Instalando paquetes principales..."
sudo pacman -S --noconfirm \
    hyprland waybar hyprpaper kitty nautilus rofi \
    grim slurp swaylock wlogout brightnessctl fastfetch \
    pipewire wireplumber pipewire-pulse python \
    orchis-theme papirus-icon-theme xcursor-themes

echo
echo "Instalando paquetes AUR..."
yay -S --noconfirm grimblast-git hyprland-gestures

echo
echo "Creando estructura de directorios..."
mkdir -p ~/.config/hypr
mkdir -p ~/.config/custom_scripts
mkdir -p ~/.local/share/rofi/themes
mkdir -p ~/Pictures/Wallpapers

echo
echo "Asignando permisos a scripts..."
if [[ -f ~/.config/custom_scripts/keyboard_wheel_control.py ]]; then
    chmod +x ~/.config/custom_scripts/keyboard_wheel_control.py
fi

echo
echo "Instalación completada."
echo "Asegúrate de colocar tus archivos:"
echo "  - ~/.config/hypr/hyprland.conf"
echo "  - ~/.config/hypr/mocha.conf"
echo "  - ~/.config/custom_scripts/keyboard_wheel_control.py"
echo "  - ~/.local/share/rofi/themes/rounded-blue-dark.rasi"
echo
echo "Reinicia la sesión para aplicar los cambios."
echo "=========================================="

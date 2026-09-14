> Idiomas: [🇺🇸 Inglés](https://github.com/LuisMiSanVe/HanabiWallpaperEngineLinkService/blob/main/README.md) | [🇪🇸 Español](https://github.com/LuisMiSanVe/HanabiWallpaperEngineLinkService/blob/main/README.es.md) | [🇯🇵 Japonés](https://github.com/LuisMiSanVe/HanabiWallpaperEngineLinkService/blob/main/README.jp.md)
# 🔗 Servicio de conexión Hanabi-Wallpaper Engine
[![Shell](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)]()
[![Arch](https://img.shields.io/badge/Arch-%231793d1.svg?style=for-the-badge&logo=Arch%20Linux&logoColor=ffffff)](https://archlinux.org/)
[![Gnome](https://img.shields.io/badge/Gnome-%23ffffff.svg?style=for-the-badge&logo=GNOME&logoColor=000000)](https://www.gnome.org/)
[![Steam](https://img.shields.io/badge/steam-%23000000.svg?style=for-the-badge&logo=steam&logoColor=blue)](https://steamcommunity.com/id/kommavideogames/)

Un servicio que en segundo plano escanea los elementos a los que estés suscrito en la Workshop de Steam de Wallpaper Engine y los conecta al directorio que usa la extensión de GNOME de fondos de pantalla animados Hanabi.

## 📝 Explicación de Tecnología
El servicio escanea cada `30` segundos (por defecto) el directorio de la Workshop de Wallpaper Engine y crea enlaces simbólicos de los nuevos fondos de pantalla en el directorio que quieras.
Por defecto, usa `home/.local/share/Steam/steamapps/workshop/content/431960` como la ruta a la Workshop, si usas otro directorio, [cámbialo](https://github.com/LuisMiSanVe/HanabiWallpaperEngineLinkService/blob/main/link_wallpaper.sh#L6).

El script está hecho para el caso en el que uses fondos de pantalla animados en secuencia, más que fondos estáticos, por esa razón **solo conectará fondos de pantalla de formatos de video** como `.mp4`, `.webm`, `.mkv`, `.mov` y `.avi`.\
Si estás suscrito a fondos estáticos de imagen y quieres añadirlos tambien a Hanabi, puedes añadir el filtro en esta [línea](https://github.com/LuisMiSanVe/HanabiWallpaperEngineLinkService/blob/main/link_wallpaper.sh#L50), pero ten en cuenta que el script puede detectar también la miniatura del elemento en la Workshop.\
El directorio de destino es `home/Wallpapers/WallpaperEngine` por defecto, si usas otro directorio, [cámbialo](https://github.com/LuisMiSanVe/HanabiWallpaperEngineLinkService/blob/main/link_wallpaper.sh#L8), si por lo contrario prefieres usar el por defecto, ve a las preferencias de la extensión Hanabi y selecciona `home/Wallpapers/WallpaperEngine` como el directorio de fondos de pantalla secuenciales.

## 📋 Prerequisitos
Debes tener [Wallpaper Engine](https://www.wallpaperengine.io/) en [Steam](https://store.steampowered.com/) y estar suscrito almenos a un elemento de la Workshop que sea un fondo de formato video y tener instalada la [extensión de GNOME Hanabi](https://github.com/jeffshee/gnome-ext-hanabi).

## 💻 Tecnologías usadas
- Lenguaje de programación: Bash Script
- Probado en: [Manjaro GNOME](https://manjaro.org/)
- Otros:
  - [Wallpaper Engine](https://www.wallpaperengine.io/)
  - [Hanabi GNOME extensión](https://github.com/jeffshee/gnome-ext-hanabi)
- IDE Recomendado: [VS Code](https://code.visualstudio.com/)

> <ruby>言語<rt>げんご</rt></ruby>: [🇺🇸 <ruby>英語<rt>えいご</rt></ruby>](https://github.com/LuisMiSanVe/HanabiWallpaperEngineLinkService/blob/main/README.md) | [🇪🇸 スペイン<ruby>語<rt>ご</rt></ruby>](https://github.com/LuisMiSanVe/HanabiWallpaperEngineLinkService/blob/main/README.es.md) | [🇯🇵 <ruby>日本語<rt>にほんご</rt></ruby>](https://github.com/LuisMiSanVe/HanabiWallpaperEngineLinkService/blob/main/README.jp.md)
# 🔗 Hanabi-Wallpaper Engine Link Service
[![Shell](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)]()
[![Arch](https://img.shields.io/badge/Arch-%231793d1.svg?style=for-the-badge&logo=Arch%20Linux&logoColor=ffffff)](https://archlinux.org/)
[![Gnome](https://img.shields.io/badge/Gnome-%23ffffff.svg?style=for-the-badge&logo=GNOME&logoColor=000000)](https://www.gnome.org/)
[![Steam](https://img.shields.io/badge/steam-%23000000.svg?style=for-the-badge&logo=steam&logoColor=blue)](https://steamcommunity.com/id/kommavideogames/)

A background service script that scans your Wallpaper Engine's Steam Workshop suscribed items and links them to the folder Live wallpaper Hanabi GNOME extension uses.

## 📝 <ruby>技術<rt>ぎじゅつ</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>
The service scans each `30` seconds (by default) the Wallpaper Engine's Workshop folder and creates symlinks to the new wallpapers on the desired folder.\
By default, it uses `home/.local/share/Steam/steamapps/workshop/content/431960` as the Workshop route, if you currently use a different folder, [change it](https://github.com/LuisMiSanVe/HanabiWallpaperEngineLinkService/blob/main/link_wallpaper.sh#L6).

The script is built in the case you use secuential live wallpapers on Hanabi, rather than a static wallpaper, for that reason **it will only link wallpapers in video formats** such as `.mp4`, `.webm`, `.mkv`, `.mov` and `.avi`.\
If you are also suscribed to static image wallpapers and want to add them too to Hanabi, you can add the filter on this [line](https://github.com/LuisMiSanVe/HanabiWallpaperEngineLinkService/blob/main/link_wallpaper.sh#L50), but be aware the script may also detect the Workshop's item cover image.\
The destination folder is `home/Wallpapers/WallpaperEngine` by default, if you use another folder [change it](https://github.com/LuisMiSanVe/HanabiWallpaperEngineLinkService/blob/main/link_wallpaper.sh#L8), if you are willing to use this folder instead, go to the Hanabi extension settings and select `home/Wallpapers/WallpaperEngine` as the Hanabi folder for secuential wallpapers.

## 📋 <ruby>前提条件<rt>ぜんていじょうけん</rt></ruby>
You must own [Wallpaper Engine](https://www.wallpaperengine.io/) on [Steam](https://store.steampowered.com/) and at least be suscribed to one video format Workshop wallpaper and have installed the [Hanabi GNOME extension](https://github.com/jeffshee/gnome-ext-hanabi).

## 💻 使った技術
- プログラミング<ruby>言語<rt>げんご</rt></ruby> Bash Script
- <ruby>試験済<rt>しけんず</rt></ruby>みのOS [Manjaro GNOME](https://manjaro.org/)
- その<ruby>他<rt>ほか</rt></ruby>の<ruby>技術<rt>ぎじゅつ</rt></ruby>
  - [Wallpaper Engine](https://www.wallpaperengine.io/)
  - [Hanabi GNOME extension](https://github.com/jeffshee/gnome-ext-hanabi)
- おすすめのIDE [VS Code](https://code.visualstudio.com/)

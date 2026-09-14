#!/usr/bin/env bash

set -u

# Wallpaper Engine Workshop directory
SOURCE="$HOME/.local/share/Steam/steamapps/workshop/content/431960"
# Flat directory that Hanabi will use
DEST="$HOME/Wallpapers/WallpaperEngine"
# How often to check for changes
INTERVAL=30


sync_wallpapers() {
    if [[ ! -d "$SOURCE" ]]; then
        echo "Workshop directory not found: $SOURCE"
        return
    fi

    mkdir -p "$DEST"

    declare -A seen

    while IFS= read -r -d '' file; do
        filename="$(basename "$file")"
        destination="$DEST/$filename"
        if [[ -n "${seen[$filename]+x}" ]]; then
            extension="${filename##*.}"
            name="${filename%.*}"
            counter=2

            while [[ -e "$DEST/${name}_${counter}.${extension}" ]]; do
                ((counter++))
            done

            destination="$DEST/${name}_${counter}.${extension}"
        fi

        seen["$(basename "$destination")"]=1

        if [[ -L "$destination" ]] && [[ "$(readlink -f "$destination")" == "$(readlink -f "$file")" ]]; then
            continue
        fi

        rm -f "$destination"
        ln -s "$file" "$destination"

        echo "Added: $(basename "$destination")"

    done < <(
        find "$SOURCE" -type f \( \
            -iname "*.mp4" -o \
            -iname "*.webm" -o \
            -iname "*.mkv" -o \
            -iname "*.mov" -o \
            -iname "*.avi" \
        \) -print0
    )

    # Remove symlinks of unsuscribed wallpapers
    while IFS= read -r -d '' link; do
        if [[ ! -e "$link" ]]; then
            echo "Removed: $(basename "$link")"
            rm -f "$link"
        fi
    done < <(find "$DEST" -type l -print0)
}

echo "Wallpaper Engine → Hanabi link started"
echo "Source: $SOURCE"
echo "Destination: $DEST"
echo "Checking every $INTERVAL seconds..."

while true; do
    sync_wallpapers
    sleep "$INTERVAL"
done

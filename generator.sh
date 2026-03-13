#!/bin/bash
# generator.sh
# Author: Émile
# Date: 2026-03-13
# Goal: quickly generate the project structure for web-apps

# Gets the directory of the script itself
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKING_DIR="$PWD"

# Creates all the folder neccessary
mkdir -p "$WORKING_DIR"/Project/{client/{css,images,js,pages},serveur}

touch Project/client/css/style.css Project/client/js/global.js # creates the files neccessary
cp "$SCRIPT_DIR/utils/index.html" "$WORKING_DIR/Project/index.html"  # copy a premade index.html into the proper place in project

cp -r "$SCRIPT_DIR/utils/utilitaires" "$WORKING_DIR/Project/client/" # copy all the utilis into the proper place in project

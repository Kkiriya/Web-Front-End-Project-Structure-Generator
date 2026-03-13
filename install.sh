#!/bin/bash
# install.sh
# Author: Émile
# Date: 2026-03-13
# Goal: Install the app

# COLOURS
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
BOLD='\033[1m'
RESET='\033[0m'

# Detects the default shell to set an alias
default_shell="$(basename "$SHELL")"

# contains the alais to be appended to you shells config file
alias="alias wb-gen='./generator.sh'"

#Contains the proper config file to append
config_file=""

# Assigns the proper config file to the config_file var
case "$default_shell" in
    bash) config_file="$HOME/.bashrc" ;;
    zsh) config_file="$HOME/.zshrc" ;;
esac

# checks if we did find a config_file then checks if the alias has already been added and then adds the alias
if [ -n "$config_file" ] && ! grep -q "$alias" "$config_file"; then
    echo "$alias" >> "$config_file"
    printf "$GREEN \nInstallation Succesful! \nrun the script by typing $CYAN'wb-gen'$GREEN in your terminal in the desired directory! $RESET \n"
    source $config_file # applies the change to your shell
elif grep -q "$alias" "$config_file"; then
    printf "$YELLOW \nAlready Installed! \nrun the script by typing $CYAN'wb-gen'$YELLOW in your terminal in the desired directory! $RESET \n"
else
    echo "$RED \nInstallation Failed! $RESET \n"
fi

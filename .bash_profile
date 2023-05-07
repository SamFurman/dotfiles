#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


BASHRC_CONFIG_DIR=~/.config/bash

if [ -f "$BASHRC_CONFIG_DIR/.bashrc" ]; then
    . "$BASHRC_CONFIG_DIR/.bashrc"
fi

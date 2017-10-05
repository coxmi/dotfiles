#!/usr/bin/env bash

# get current working directory
export DOTFILES && DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# include aliases, functions and paths
# * ~/.extra can be used for other settings you don’t want to commit.

for file in $DOTFILES/.{alias,bash_prompt,exports,extra,function,path}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done; unset file;


# enable colour output
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;


# Autocorrect typos in path names when using `cd`
shopt -s cdspell;


# Highlight section titles in man pages
export LESS_TERMCAP_md="${yellow}";


# Do not autocomplete when accidentally pressing Tab on an empty line.
shopt -s no_empty_cmd_completion


# add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;


# NVM

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion